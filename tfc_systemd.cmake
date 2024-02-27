function(tfc_systemd_service_file_in_component EXE_TARGET COMPONENT DESCRIPTION)
  set(EXE_NAME ${EXE_TARGET})
  set(INSTALL_DIR ${CMAKE_INSTALL_BINDIR})

  include(GNUInstallDirs)

  configure_file("${CMAKE_CURRENT_FUNCTION_LIST_DIR}/systemd/tfc@.service" "${CMAKE_BINARY_DIR}/systemd/${EXE_TARGET}@.service")

  install(
    FILES "${CMAKE_BINARY_DIR}/systemd/${EXE_TARGET}@.service"
    DESTINATION "${CMAKE_INSTALL_LIBDIR}/systemd/system/"
    COMPONENT ${COMPONENT}
    CONFIGURATIONS Release
  )
endfunction()

function(tfc_systemd_service_file EXE_TARGET DESCRIPTION)
  tfc_systemd_service_file_in_component(${EXE_TARGET} ${EXE_TARGET} ${DESCRIPTION})
endfunction()
