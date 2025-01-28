cmake_minimum_required(VERSION 3.10)

project(MyTool)

set(CMAKE_CXX_STANDARD 17)

add_executable(MyTool
    src/main.cpp
    src/UProjectParser.cpp
    src/BuildManager.cpp
    src/PackageManager.cpp
)

target_include_directories(MyTool PUBLIC include)