#####################################
## windows specific build settings ##
#####################################
set(PLATFORM_CXX_FLAGS_RELEASE "-O3 -Wall")
set(PLATFORM_C_FLAGS_RELEASE "-O3 -Wall")
set(PLATFORM_CXX_FLAGS_DEBUG "-g -Wall")
set(PLATFORM_C_FLAGS_DEBUG "-g -Wall")
set(PLATFORM_INC_PATH "/usr/include/")
set(PLATFORM_LIB_PATH "/usr/lib/")
set(PLATFORM_STATIC_LIBS m rt ${CMAKE_DL_LIBS})
set(PLATFORM_SHARED_LIBS "")

