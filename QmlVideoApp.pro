TEMPLATE = subdirs

#CONFIG += ordered

SUBDIRS += \
    application-core \
	filters \
    main-app \
    unit-tests

OTHER_FILES += \
    common.pri

# dependencies
main-app.depends = application-core

# Do not compile unit-tests for IOs devices (console app is not supported)
macx-ios-clang: SUBDIRS -= unit-tests filters
