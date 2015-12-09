if(DEFINED HUNTER_CMAKE_PROJECTS_BULLET_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_BULLET_ 1)
endif()

# Load used modules
include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    Bullet
    VERSION
    "2.83.6"
    URL
    "https://github.com/bulletphysics/bullet3/archive/2.83.6.tar.gz"
    SHA1
    25860670792e676f1b830bfbf19d15e4042f683c
)

hunter_cmake_args(
    Bullet
    CMAKE_ARGS
        BUILD_BULLET2_DEMOS=OFF
        BUILD_CPU_DEMOS=OFF
        BUILD_OPENGL3_DEMOS=OFF
        BUILD_UNIT_TESTS=OFF
        INSTALL_EXTRA_LIBS=OFF
        BUILD_EXTRAS=OFF
        CMAKE_BUILD_TYPE=RelWithDebInfo
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cachable(Bullet)
hunter_download(PACKAGE_NAME Bullet)
