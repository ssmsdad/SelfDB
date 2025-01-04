cmake_minimum_required(VERSION 3.10)

project(SelfDB VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
# Enable compile_commands.json generation
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(CLI11 REQUIRED)

add_subdirectory(src/database)
add_subdirectory(src/driver)
add_subdirectory(src/persistence)
add_subdirectory(src/main)