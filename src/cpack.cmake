set(CPACK_SET_DESTDIR ON)
set(CPACK_PACKAGE_NAME "hello")

set(CPACK_GENERATOR "RPM;TGZ")
set(PACKAGE_KIND "RPM")

include(CPack)