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
