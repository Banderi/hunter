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

if(NOT OGG_ROOT OR NOT VORBIS_ROOT)
    message(FATAL_ERROR "SndFile requires the use of OGG and Vorbis, but OGG_ROOT or VORBIS_ROOT are not set")
endif()

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    SndFile
    VERSION
    "1.0.26-cmake"
    URL
    "https://github.com/stohrendorf/libsndfile/archive/b0c8d2490ae42a1fbf8186825895044370996984.zip"
    SHA1 170a3f85551704ea564bd2b7cbd623390896be7f
)

hunter_cmake_args(
    SndFile
    CMAKE_ARGS
        OGG_ROOT=${OGG_ROOT}
        VORBIS_ROOT=${VORBIS_ROOT}
        BUILD_TESTING=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(SndFile)
hunter_download(PACKAGE_NAME SndFile)
