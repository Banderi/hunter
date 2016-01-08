if(DEFINED HUNTER_CMAKE_PROJECTS_JPEG_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_JPEG_ 1)
endif()

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    JPEG
    VERSION
    "9a-cmake"
    URL
    "https://github.com/stohrendorf/libjpeg-cmake/archive/9349a32d4ed3e41707f301015b0df8a66aa762bd.zip"
    SHA1 d79e3b1753d0c3f752929c164dc0ac7284a2f78d
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_configuration_types(JPEG CONFIGURATION_TYPES Release)

hunter_cacheable(JPEG)
hunter_download(PACKAGE_NAME JPEG)
