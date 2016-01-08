if(DEFINED HUNTER_CMAKE_PROJECTS_OPENAL_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_OPENAL_ 1)
endif()

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    OpenAL
    VERSION
    "1.17.1"
    URL
    "https://github.com/kcat/openal-soft/archive/openal-soft-1.17.1.tar.gz"
    SHA1 13622ff9a8bca8fab5e15441b98a8e8725c59e3e
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(OpenAL)
hunter_download(PACKAGE_NAME OpenAL)
