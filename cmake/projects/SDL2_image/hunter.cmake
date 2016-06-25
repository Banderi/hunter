if(DEFINED HUNTER_CMAKE_PROJECTS_SDL2_IMAGE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_SDL2_IMAGE_ 1)
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
    SDL2_image
    VERSION
    "2.0.1"
    URL
    "https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.1.tar.gz"
    SHA1
    76c5da0a59a77e5160a65a1c8f53bef016bdc373
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(SDL2_image)
hunter_download(PACKAGE_NAME SDL2_image)
