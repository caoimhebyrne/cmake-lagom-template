# Change this to whatever you want the minimum CMake version to be
cmake_minimum_required(VERSION 3.22)

# !!! Replace "cmake_lagom_template" with your project's name
project(cmake_lagom_template CXX)

# Use C++20
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Compile options adapted from https://github.com/SerenityOS/serenity/tree/master/Meta/Lagom#using-lagom-in-an-external-project
add_compile_options(-fno-gnu-keywords)              # JS::Value has a method named typeof, which also happens to be a GNU keyword.

# Both GCC and clang complain about the same issue, but use different warning names.
# AK::StringView defines operator"" sv, they complain because it does not have an underscore.
add_compile_options(-Wno-user-defined-literals)
add_compile_options(-Wno-literal-suffix)

add_compile_options(-Wno-unknown-warning-option)    # We don't really care about if an option doesn't exist (see above)

# Use Lagom from SerenityOS
include(FetchContent)
include(CMake/FetchLagom.cmake)

# Collect all .cpp files in the `src` directory
file(GLOB_RECURSE SOURCES src/*.cpp)

# !!! Replace "cmake_lagom_template" with your project's name
add_executable(cmake_lagom_template ${SOURCES})
target_link_libraries(cmake_lagom_template Lagom::Core LibMain)
