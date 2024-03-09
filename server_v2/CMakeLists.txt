cmake_minimum_required(VERSION 3.3)

project(rdb_server2)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED on)

include_directories(
    ../include
    ../librocksdb.a
)

find_library(PTHREAD_LIBRARY pthread)

add_executable(
  rdb_server2 server2.cpp)

target_link_libraries(
  rdb_server2 rocksdb dl ${PTHREAD_LIBRARY})

