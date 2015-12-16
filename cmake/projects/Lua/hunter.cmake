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
    "https://github.com/hunter-packages/lua/archive/eabd8c173dab151e2dd5763e2d67c6dc5c9dc5f7.zip"
    SHA1
    ace46557838fd56221e362a0ce49d25726c7f94b
)

hunter_configuration_types(Lua CONFIGURATION_TYPES Release)
hunter_cacheable(Lua)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME Lua)

