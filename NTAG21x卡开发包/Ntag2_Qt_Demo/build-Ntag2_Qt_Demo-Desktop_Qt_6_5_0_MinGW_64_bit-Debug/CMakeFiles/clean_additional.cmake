# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\Ntag2_Qt_Demo_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Ntag2_Qt_Demo_autogen.dir\\ParseCache.txt"
  "Ntag2_Qt_Demo_autogen"
  )
endif()
