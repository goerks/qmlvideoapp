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

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../application-core/release/ -lapplication-core
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../application-core/debug/ -lapplication-core
else:unix: LIBS += -L$$OUT_PWD/../application-core/ -lapplication-core

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/release/libapplication-core.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/debug/libapplication-core.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/release/application-core.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../application-core/debug/application-core.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../application-core/libapplication-core.a
