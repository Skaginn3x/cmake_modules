function(tfc_systemd_service_file EXE_TARGET DESCRIPTION)
  set(EXE_NAME ${EXE_TARGET})
  set(INSTALL_DIR ${CMAKE_INSTALL_BINDIR})

  configure_file("${CMAKE_CURRENT_FUNCTION_LIST_DIR}/systemd/tfc@.service" "${CMAKE_BINARY_DIR}/systemd/${EXE_TARGET}@.service")

  include(GNUInstallDirs)
  install(
    FILES "${CMAKE_BINARY_DIR}/systemd/${EXE_TARGET}@.service"
    DESTINATION "${CMAKE_INSTALL_LIBDIR}/systemd/system/"
    COMPONENT ${EXE_TARGET}
    CONFIGURATIONS Release
  )
endfunction()
