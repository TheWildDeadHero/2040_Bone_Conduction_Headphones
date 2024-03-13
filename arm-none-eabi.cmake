set(CMAKE_C_COMPILER "arm-none-eabi-gcc")
set(CMAKE_CXX_COMPILER "arm-none-eabi-g++")

set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")

set(CMAKE_C_STANDARD 23)
set(CMAKE_CXX_STANDARD 23)

set(CMAKE_C_STANDARD_REQUIRED On)
set(CMAKE_CXX_STANDARD_REQUIRED On)
set(CMAKE_C_EXTENSIONS On)
set(CMAKE_CXX_EXTENSIONS On)

set(CMAKE_C_FLAGS -O2)
set(CMAKE_CXX_FLAGS -O2)

set(CPU_OPTIONS -mthumb -mcpu=cortex-m0plus)
set(COMPILE_WARN_ERROR -Werror -Wall)

add_compile_options(
    ${CPU_OPTIONS}
    ${COMPILE_WARN_ERROR}
)