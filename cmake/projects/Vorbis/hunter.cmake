if(DEFINED HUNTER_CMAKE_PROJECTS_VORBIS_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_VORBIS_ 1)
endif()

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

if(NOT OGG_ROOT)
    message(FATAL_ERROR "Vorbis requires the use of OGG, but OGG_ROOT is not set")
endif()

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    Vorbis
    VERSION
    "1.3.5-dev"
    URL
    "https://github.com/stohrendorf/vorbis/archive/07fe291b8dcabcefa6834a32765476d6d8535a23.zip"
    SHA1
    65ef7ca9fb919b1ac52700c36f27a1c226217b04
)

hunter_cmake_args(
    Vorbis
    CMAKE_ARGS
        OGG_ROOT=${OGG_ROOT}
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(Vorbis)
hunter_download(PACKAGE_NAME Vorbis)
