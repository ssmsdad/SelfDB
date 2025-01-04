#include "driver/driver.hpp"
#include <iostream>
#include <string>

void Driver::init(const std::string &dbFile) {
    dbFile_ = dbFile;
    // 数据库启动时，从文件加载到内存
    std::unordered_map<std::string, std::string> temp;
    persistence_.loadData(dbFile_, temp);
    db_.setData(temp);
}

int Driver::run(int argc, char** argv) {
    // 简单 CLI 演示，可替换为更专业的解析库 CLI11等
    while(true) {
        std::cout << "\n(create/read/update/delete/exit): ";
        std::string cmd;
        std::cin >> cmd;
        if(cmd == "exit") break;
        std::string key, val;

        if(cmd == "create") {
            std::cin >> key >> val;
            if(db_.createRecord(key, val)) {
                persistence_.saveData(dbFile_, db_.getData());
                std::cout << "创建成功\n";
            } else {
                std::cout << "记录已存在\n";
            }
        } else if(cmd == "read") {
            std::cin >> key;
            auto result = db_.readRecord(key);
            if(!result.empty()) {
                std::cout << "value: " << result << "\n";
            } else {
                std::cout << "记录不存在\n";
            }
        } else if(cmd == "update") {
            std::cin >> key >> val;
            if(db_.updateRecord(key, val)) {
                persistence_.saveData(dbFile_, db_.getData());
                std::cout << "更新成功\n";
            } else {
                std::cout << "记录不存在\n";
            }
        } else if(cmd == "delete") {
            std::cin >> key;
            if(db_.deleteRecord(key)) {
                persistence_.saveData(dbFile_, db_.getData());
                std::cout << "删除成功\n";
            } else {
                std::cout << "记录不存在\n";
            }
        }
    }
    return 0;
}