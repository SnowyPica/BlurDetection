cmake_minimum_required(VERSION 2.8)

project(BLUR_DETECTION)

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(${PROJECT_NAME} main.cpp LSMC.cpp img_convert.cpp LaplacianDeblur.cpp LimitTest.cpp)

target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})