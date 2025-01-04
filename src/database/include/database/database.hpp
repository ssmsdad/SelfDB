#pragma once
#include <unordered_map>
#include <string>

class Database {
public:
    bool createRecord(const std::string &key, const std::string &value);
    std::string readRecord(const std::string &key);
    bool updateRecord(const std::string &key, const std::string &newValue);
    bool deleteRecord(const std::string &key);

    // 提供访问内部数据的接口，供持久化模块读取
    const std::unordered_map<std::string, std::string>& getData() const;
    // 允许外部加载数据到数据库
    void setData(const std::unordered_map<std::string, std::string> &newData);

private:
    std::unordered_map<std::string, std::string> data_;
};