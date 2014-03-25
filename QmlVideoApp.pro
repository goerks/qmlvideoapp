TEMPLATE = subdirs

SUBDIRS += \
    application-core \
	filters \
    main-app \
    unit-tests

OTHER_FILES += \
    common.pri

# dependencies
main-app.depends = application-core

#include(application-core/application-core.pri)

INCLUDEPATH += $$PWD/application-core/include
DEPENDPATH += $$PWD/application-core/include

LIBS += -lapplication-core

win32 {
    CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/application-core/release/
    CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/application-core/debug/

    CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/application-core/release/application-core.lib
    CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/application-core/debug/application-core.lib
}

unix {
    LIBS += -L$$OUT_PWD/application-core/
    PRE_TARGETDEPS += $$OUT_PWD/application-core/libapplication-core.a

    QMAKE_LFLAGS += -fprofile-arcs
}
