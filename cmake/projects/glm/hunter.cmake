if(DEFINED HUNTER_CMAKE_PROJECTS_GLM_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_GLM_ 1)
endif()

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    glm
    VERSION
    "0.9.7.1"
    URL
    "https://github.com/g-truc/glm/archive/0.9.7.1.tar.gz"
    SHA1
    5e383dc9dbafd33ba53107995554116650139c12
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(glm)
hunter_download(PACKAGE_NAME glm)

