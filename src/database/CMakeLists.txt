add_library(database STATIC 
    src/database.cpp
)
target_include_directories(database 
    PUBLIC include
)
