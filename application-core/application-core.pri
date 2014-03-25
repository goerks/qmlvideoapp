QT += qml quick

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

#LIBS += -lapplication-core

#win32 {
#    CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../application-core/release/
#    CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../application-core/debug/

#    CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/release/application-core.lib
#    CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/debug/application-core.lib
#}

#unix {
#    LIBS += -L$$OUT_PWD/../application-core/
#    PRE_TARGETDEPS += $$OUT_PWD/../application-core/libapplication-core.a

#    QMAKE_LFLAGS += -fprofile-arcs
#}

win32 {
    CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../application-core/release/ -lapplication-core
    CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../application-core/debug/ -lapplication-core

    !win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/release/application-core.lib
    !win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/debug/application-core.lib
}

win32-g++ {
    message("Using settings for win32-g++ specs")
    CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/release/libapplication-core.a
    CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/debug/libapplication-core.a
}

unix {
    LIBS += -L$$OUT_PWD/../application-core/ -lapplication-core
    PRE_TARGETDEPS += $$OUT_PWD/../application-core/libapplication-core.a
}
