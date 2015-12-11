# Added by Denis Kerzhemanov, 2015

if(DEFINED HUNTER_CMAKE_PROJECTS_LUA_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_LUA_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Lua
    VERSION
    "5.3.2"
    URL
    "https://github.com/hunter-packages/lua/archive/1054f9fa7a86dd15ecdc085430c038883bbdf0ae.zip"
    SHA1
    5e2f6765a92abbf1a68289cb797cce2ea9e19f90
)

hunter_configuration_types(Lua CONFIGURATION_TYPES Release)
hunter_cacheable(Lua)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME Lua)

