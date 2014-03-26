TEMPLATE = subdirs

SUBDIRS += \
    main-app \
    unit-tests

OTHER_FILES += \
    common.pri

# Do not compile unit-tests for IOs devices (console app is not supported)
macx-ios-clang: SUBDIRS -= unit-tests filters
