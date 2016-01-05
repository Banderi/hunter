if(DEFINED HUNTER_CMAKE_PROJECTS_SDL2_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_SDL2_ 1)
endif()

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    SDL2
    VERSION
    "2.0.4"
    URL
    "http://libsdl.org/release/SDL2-2.0.4.tar.gz"
    SHA1
    470a23dfc4b6220c687925ebbe5fe96287f8fb08
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(SDL2)
hunter_download(PACKAGE_NAME SDL2)
