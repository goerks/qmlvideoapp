TEMPLATE = subdirs

CONFIG += ordered

SUBDIRS += \
    application-core \
    Filters \
    main-app \
    unit-tests

OTHER_FILES += \
    common.pri

# dependencies
main-app.depends = application-core
unit-tests.depends = application-core
