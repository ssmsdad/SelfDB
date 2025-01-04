#include "driver/driver.hpp"

int main(int argc, char** argv) {
    Driver driver;
    driver.init("data/db.txt");
    return driver.run(argc, argv);
}