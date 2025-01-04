#include "database/database.hpp"

bool Database::createRecord(const std::string &key, const std::string &value) {
    if(data_.find(key) != data_.end()) return false;
    data_[key] = value;
    return true;
}

std::string Database::readRecord(const std::string &key) {
    auto it = data_.find(key);
    return (it != data_.end()) ? it->second : "";
}

bool Database::updateRecord(const std::string &key, const std::string &newValue) {
    auto it = data_.find(key);
    if(it != data_.end()) {
        it->second = newValue;
        return true;
    }
    return false;
}

bool Database::deleteRecord(const std::string &key) {
    return data_.erase(key) > 0;
}

const std::unordered_map<std::string, std::string>& Database::getData() const {
    return data_;
}

void Database::setData(const std::unordered_map<std::string, std::string> &newData) {
    data_ = newData;
}