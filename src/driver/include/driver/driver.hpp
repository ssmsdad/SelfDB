#pragma once

#include "database/database.hpp"
#include "persistence/persistence.hpp"
#include <string>

class Driver {
public:
  Driver() = default;
  void init(const std::string &dbFile);
  int run(int argc, char **argv);

private:
  Database db_;
  DataPersistence persistence_;
  std::string dbFile_;
};