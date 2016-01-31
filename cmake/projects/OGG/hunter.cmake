if(DEFINED HUNTER_CMAKE_PROJECTS_OGG_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_OGG_ 1)
endif()

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    OGG
    VERSION
    "1.3.2-dev"
    URL
    "https://github.com/xiph/ogg/archive/23264ee60baa66c5f627e05f1917ba99d422d258.zip"
    SHA1
    aa35c0275952807c24e60bbee5e51c8ea3dde712
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(OGG)
hunter_download(PACKAGE_NAME OGG)
