cmake_minimum_required(3.13)

set(PICO_SDK_DIR ${CMAKE_CURRENT_SOURCE_DIR}/submodules/pico-sdk/)
set(PICO_APP ${CMAKE_CURRENT_SOURCE_DIR}/application/example1/) # TODO - add actual application

include(PICO_SDK_DIR)

pico_sdk_init()

set(SOURCE
    ${CMAKE_CURRENT_SOURCE_DIR}/main.c
    ${PICO_APP}/application.c)

set(INCLUDES
    ${PICO_APP}/application.h)

add_executable(2040BoneConductionHeadphones ${SOURCE} ${INCLUDES})