cmake_minimum_required(VERSION 2.8.12)
project(WupperGui)

include_directories("." "../wupper_tools/" "../drivers/" "../rcc_error/" "../regmap" "./include")

add_subdirectory(../wupper_tools ./wupper_tools)

# Qt stuff
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

# Find the QtWidgets library
find_package(Qt5Widgets REQUIRED)
find_package(Qt5PrintSupport REQUIRED)

# Stuff concerning this project

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -fPIC -std=gnu++11")

set(
    HEADER_FILES 
    include/chaintest-thread.h
    include/qcustomplot.h
    include/throughput-thread.h
    include/wupper_gui.h
)

set( 
    SRC_FILES
    src/chaintest-thread.cpp
    src/throughput-thread.cpp
    src/qcustomplot.cpp
    src/wupper_gui.cpp
    src/main.cpp
)

add_executable(WupperGui ${SRC_FILES} ${HEADER_FILES})
target_link_libraries (WupperGui Wupper cmem_rcc regmap DFDebug rcc_error Qt5::Widgets Qt5::PrintSupport)

