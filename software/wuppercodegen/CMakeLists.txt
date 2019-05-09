cmake_minimum_required(VERSION 2.8.12)

set(PACKAGE wuppercodegen)
set(PACKAGE_VERSION 0.7.2)

set(DISABLE_PACKAGES test examples)


set(CMAKE_VERBOSE_MAKEFILE OFF)
set(CMAKE_COLOR_MAKEFILE   ON)

set(VERSION "0.7.2")

set(WUPPER_CODE_GEN ./wuppercodegen/cli.py)


#macro(wupper FILE)
#  set(TEMPLATE input/${FILE}.template)
#  set(OUTPUT output/${FILE})
#  add_custom_command(
#      OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/${OUTPUT}
#      COMMAND mkdir -p output
#      COMMAND ${WUPPER_CODE_GEN} input/test-registers.yaml ${TEMPLATE} ${OUTPUT}
#      COMMAND diff ${OUTPUT} ref
#      DEPENDS ${WUPPER_CODE_GEN} ${TEMPLATE} input/test-registers.yaml
#      WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
#  )
#  add_custom_target(${FILE} ALL DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${OUTPUT})
#endmacro(wupper)
#
#macro(wupper_diff FILE previousYaml currentYaml)
#  set(PREVIOUS_CONFIG input/${previousYaml})
#  set(CURRENT_CONFIG input/${currentYaml})
#  set(TEMPLATE input/${FILE}.template)
#  set(OUTPUT output/${FILE})
#  add_custom_command(
#      OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/${OUTPUT}
#      COMMAND mkdir -p output
#      COMMAND ${WUPPER_CODE_GEN} --diff ${PREVIOUS_CONFIG} ${CURRENT_CONFIG}  ${TEMPLATE} ${OUTPUT}
#      COMMAND diff ${OUTPUT} ref
#      DEPENDS ${WUPPER_CODE_GEN} ${TEMPLATE} ${PREVIOUS_CONFIG} ${CURRENT_CONFIG}
#      WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
#  )
#  add_custom_target(${FILE} ALL DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${OUTPUT})
#endmacro(wupper_diff)

add_custom_target(clean-all
   ${CMAKE_BUILD_TOOL} clean
   COMMAND ${CMAKE_BUILD_TOOL} -C ${CMAKE_CURRENT_SOURCE_DIR}/doc clean
)

add_custom_target(sphynx
    ${CMAKE_BUILD_TOOL} html latexpdf
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/doc
)

add_custom_target(doc
    zip -q -r ../../../doc-pythonhosted.zip *
    DEPENDS sphynx
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/doc/_build/html
)

add_custom_target(pypi
    python setup.py sdist upload
    DEPENDS setup.py
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

add_custom_target(pypitest
    python setup.py sdist upload -r https://testpypi.python.org/pypi
    DEPENDS setup.py
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

#wupper(registers.html)
#wupper(registers-alt.html)
#wupper(registers.tex)
#wupper(registers-alt.tex)
#wupper(address_offset.vhd)
#wupper(defaults.vhd)
#wupper(init.vhd)
#wupper(trigger.vhd)
#wupper(read.vhd)
#wupper(write.vhd)
#wupper(monitor_record.vhd)
#wupper(control_record.vhd)
#wupper(registers.h)
#wupper(registers.c)
#
#wupper_diff(registers-diff.html test-registers-1.0.yaml test-registers.yaml)
