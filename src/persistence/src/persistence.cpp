#include "persistence/persistence.hpp"
#include <fstream>

bool DataPersistence::loadData(const std::string &filename, 
    std::unordered_map<std::string, std::string> &data) 
{
    std::ifstream infile(filename);
    if(!infile.is_open()) return false;
    data.clear();
    std::string key, value;
    while(infile >> key >> value) {
        data[key] = value;
    }
    return true;
}

bool DataPersistence::saveData(const std::string &filename, 
    const std::unordered_map<std::string, std::string> &data) 
{
    std::ofstream outfile(filename);
    if(!outfile.is_open()) return false;
    for(const auto &kv : data) {
        outfile << kv.first << " " << kv.second << "\n";
    }
    return true;
}