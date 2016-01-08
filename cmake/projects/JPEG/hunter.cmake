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
    "https://github.com/stohrendorf/libjpeg-cmake/archive/0f32490965f52bc14179b1149fb87d97bed24906.zip"
    SHA1 4009171737b4bb52bb6ef8d86a1913f3c92a5ff1
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_configuration_types(JPEG CONFIGURATION_TYPES Release)

hunter_cacheable(JPEG)
hunter_download(PACKAGE_NAME JPEG)
