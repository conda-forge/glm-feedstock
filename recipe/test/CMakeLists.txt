cmake_minimum_required(VERSION 3.15)
project(glm_test LANGUAGES CXX)

find_package(glm CONFIG REQUIRED)

add_executable(glm-test main.cpp)
target_link_libraries(glm-test PRIVATE glm::glm)
