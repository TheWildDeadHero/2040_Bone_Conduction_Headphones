cmake_minimum_required(VERSION 3.13)

# Include the GCC ARM compiler configuration and Pico SDK
include(arm-none-eabi.cmake)
include(submodules/pico-sdk/pico_sdk_init.cmake)

project(BoneConudctionHeadphones)

set(PICO_SDK_DIR ${CMAKE_CURRENT_SOURCE_DIR}/submodules/pico-sdk/)
set(PICO_APP ${CMAKE_CURRENT_SOURCE_DIR}/application/example1/) # TODO - add actual application

add_subdirectory(${PICO_SDK_DIR})

pico_sdk_init()

set(SOURCE
    ${CMAKE_CURRENT_SOURCE_DIR}/main.c
    ${PICO_APP}/application.c)

set(INCLUDES
    ${PICO_APP}/)

include_directories(${PICO_APP})

add_executable(2040BoneConductionHeadphones ${SOURCE} ${INCLUDES})

target_link_libraries(2040BoneConductionHeadphones pico_stdlib)
pico_add_extra_outputs(2040BoneConductionHeadphones)