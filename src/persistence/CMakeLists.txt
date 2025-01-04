add_library(persistence STATIC 
    src/persistence.cpp
)
target_include_directories(persistence 
    PUBLIC include
)