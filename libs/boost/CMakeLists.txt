include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_library(boostAsio STATIC IMPORTED GLOBAL)
set_target_properties(boostAsio PROPERTIES 
    IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/liblib-asio.a
)

add_library(boostBeast STATIC IMPORTED GLOBAL)
set_target_properties(boostBeast PROPERTIES 
    IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/liblib-beast.a
)

add_library(boostJson STATIC IMPORTED GLOBAL)
set_target_properties(boostJson PROPERTIES 
    IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/libboost_json.a
)
