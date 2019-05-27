cmake_minimum_required(VERSION 2.8.12)

set(PACKAGE regmap)
set(PACKAGE_VERSION 3.4.1)

include_directories(.)
set(CMAKE_CXX_FLAGS "--pedantic -Wall -std=c++11 -fPIC")

SET_DIRECTORY_PROPERTIES(PROPERTIES CLEAN_NO_CUSTOM 1)

if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/regenerate")
  set(WUPPER_CODE_GEN ${CMAKE_CURRENT_SOURCE_DIR}/../wuppercodegen/wuppercodegen/cli.py)
  set(REGISTER_MAP ${CMAKE_CURRENT_SOURCE_DIR}/../../firmware/scripts/WupperCodeGen/registers-1.0.yaml)

  add_custom_command(
      OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/regmap/regmap-struct.h
      COMMAND ${WUPPER_CODE_GEN} ${REGISTER_MAP} src/regmap-struct.h.template regmap/regmap-struct.h
      DEPENDS src/regmap-struct.h.template ${REGISTER_MAP}
      WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
  )

  add_custom_command(
      OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/regmap/regmap-symbol.h
      COMMAND ${WUPPER_CODE_GEN} ${REGISTER_MAP} src/regmap-symbol.h.template regmap/regmap-symbol.h
      DEPENDS src/regmap-symbol.h.template ${REGISTER_MAP}
      WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
  )

  add_custom_command(
      OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/src/regmap-symbol.c
      COMMAND ${WUPPER_CODE_GEN} ${REGISTER_MAP} src/regmap-symbol.c.template src/regmap-symbol.c
      DEPENDS src/regmap-symbol.c.template ${REGISTER_MAP}
      WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
  )
endif()


add_library(regmap regmap/regmap-common.h regmap/regmap-struct.h regmap/regmap-symbol.h src/regmap-symbol.c)
target_link_libraries(regmap)

install(TARGETS regmap EXPORT wupper DESTINATION lib)
