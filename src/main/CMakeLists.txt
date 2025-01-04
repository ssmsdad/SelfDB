add_executable(SelfDB main.cpp)

target_link_libraries(SelfDB
    PRIVATE database
    PRIVATE driver
    PRIVATE persistence
    PRIVATE CLI11::CLI11
)