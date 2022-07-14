cmake_minimum_required(VERSION 3.14 )

macro(eokas_import_library LIBRARY_NAME LIBRARY_PATH, LIBRARY_TAG)
    include(FetchContent)

    FetchContent_Declare(
            ${LIBRARY_NAME}
            GIT_REPOSITORY "${LIBRARY_PATH}"
            GIT_TAG "${LIBRARY_TAG}"
    )

    FetchContent_MakeAvailable(${LIBRARY_NAME})
endmacro()
