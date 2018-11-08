project(TestProj)
cmake_minimum_required(VERSION 2.8.11)
include_directories( "." )
add_executable(helloApp "hello.cpp")
add_executable(fooApp "foo.cpp")
add_executable(barApp "bar.cpp")
install(TARGETS helloApp RUNTIME DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/../build/Release)
install(TARGETS fooApp RUNTIME DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/../build/Release COMPONENT FOO)
install(TARGETS barApp RUNTIME DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/../build/Release COMPONENT BAR)

set(CPACK_RPM_COMPONENT_INSTALL ON)

include(cpack.cmake)
