cmake_minimum_required(VERSION 3.4.3)

include_directories("." "../rcc_error" "../DFDebug")

add_subdirectory(../DFDebug ./DFDebug)
add_subdirectory(../rcc_error ./rcc_error)

add_library(cmem_rcc src/lib/cmem_rcc_lib.cpp)
target_link_libraries(cmem_rcc rcc_error DFDebug)
add_dependencies(cmem_rcc rcc_error DFDebug)

