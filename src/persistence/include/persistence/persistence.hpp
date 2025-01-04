#pragma once
#include <unordered_map>
#include <string>

class DataPersistence {
public:
    bool loadData(const std::string &filename, 
                  std::unordered_map<std::string, std::string> &data);

    bool saveData(const std::string &filename, 
                  const std::unordered_map<std::string, std::string> &data);
};