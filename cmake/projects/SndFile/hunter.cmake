if(DEFINED HUNTER_CMAKE_PROJECTS_SNDFILE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_SNDFILE_ 1)
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
    SndFile
    VERSION
    "1.0.26-cmake"
    URL
    "https://github.com/stohrendorf/libsndfile/archive/master.zip"
    SHA1 03d1752e1d9f93172d923bf2997fb465c95c5884
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(SndFile)
hunter_download(PACKAGE_NAME SndFile)
