if(DEFINED HUNTER_CMAKE_PROJECTS_LUA_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_LUA_ 1)
endif()

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    Lua
    VERSION
    "5.2.4"
    URL
    "https://github.com/LuaDist/lua/archive/5.2.4.zip"
    SHA1
    033e7a97670e910e728573a695ebc7fc16ba532b
)

hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(Lua)
hunter_download(PACKAGE_NAME Lua)

