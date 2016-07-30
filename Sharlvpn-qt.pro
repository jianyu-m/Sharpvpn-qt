#-------------------------------------------------
#
# Project created by QtCreator 2016-07-29T16:15:10
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Sharlvpn-qt
TEMPLATE = app

LIBS += -lsodium -lglog -ljsoncpp -lresolv
QMAKE_CXXFLAGS += -DTARGET_LINUX
SOURCES += main.cpp\
        mainwindow.cpp \
    Sharpvpn/ReliableFastUDP/src/package/PackageAck.cpp \
    Sharpvpn/ReliableFastUDP/src/package/PackageBase.cpp \
    Sharpvpn/ReliableFastUDP/src/package/PackageConnectionClose.cpp \
    Sharpvpn/ReliableFastUDP/src/package/PackageConnectionCloseR.cpp \
    Sharpvpn/ReliableFastUDP/src/package/PackageConnectionCreate.cpp \
    Sharpvpn/ReliableFastUDP/src/package/PackageConnectionCreateR.cpp \
    Sharpvpn/ReliableFastUDP/src/package/PackageData.cpp \
    Sharpvpn/ReliableFastUDP/src/package/PackagePing.cpp \
    Sharpvpn/ReliableFastUDP/src/pthread_wrapper/ConditionVariable.cpp \
    Sharpvpn/ReliableFastUDP/src/pthread_wrapper/Mutex.cpp \
    Sharpvpn/ReliableFastUDP/src/ReliableSocket.cpp \
    Sharpvpn/ReliableFastUDP/src/RemoteInfo.cpp \
    Sharpvpn/src/DaemonRuntime.cpp \
    Sharpvpn/src/RouteTable.cpp \
    Sharpvpn/src/SharpCrypto.cpp \
    Sharpvpn/src/SharpPackageParser.cpp \
    Sharpvpn/src/SharpTunnel.cpp \
    Sharpvpn/src/SharpVpn.cpp \
    logdialog.cpp \
    Sharpvpn/Chinadns/src/chinadns.c \
    Sharpvpn/Chinadns/src/local_ns_parser.c

HEADERS  += mainwindow.h \
    Sharpvpn/build/SharkVPN/TestRUDPServer/resource.h \
    Sharpvpn/build/SharkVPN/TestRUDPServer/TestRUDPServer.aps \
    Sharpvpn/ReliableFastUDP/include/ReliableFastUDP.h \
    Sharpvpn/ReliableFastUDP/src/package/package.h \
    Sharpvpn/ReliableFastUDP/src/package/PackageAck.h \
    Sharpvpn/ReliableFastUDP/src/package/PackageBase.h \
    Sharpvpn/ReliableFastUDP/src/package/PackageConnectionClose.h \
    Sharpvpn/ReliableFastUDP/src/package/PackageConnectionCloseR.h \
    Sharpvpn/ReliableFastUDP/src/package/PackageConnectionCreate.h \
    Sharpvpn/ReliableFastUDP/src/package/PackageConnectionCreateR.h \
    Sharpvpn/ReliableFastUDP/src/package/PackageData.h \
    Sharpvpn/ReliableFastUDP/src/package/PackagePing.h \
    Sharpvpn/ReliableFastUDP/src/pthread_wrapper/ConditionVariable.h \
    Sharpvpn/ReliableFastUDP/src/pthread_wrapper/Mutex.h \
    Sharpvpn/ReliableFastUDP/src/ReliableFastUDP.h \
    Sharpvpn/ReliableFastUDP/src/ReliableSocket.h \
    Sharpvpn/ReliableFastUDP/src/RemoteInfo.h \
    Sharpvpn/ReliableFastUDP/src/util.h \
    Sharpvpn/src/DaemonRuntime.h \
    Sharpvpn/src/RouteTable.h \
    Sharpvpn/src/Sharp.h \
    Sharpvpn/src/SharpCrypto.h \
    Sharpvpn/src/SharpPackageParser.h \
    Sharpvpn/src/SharpTunnel.h \
    Sharpvpn/src/SharpVpn.h \
    logdialog.h \
    Sharpvpn/Chinadns/src/chinadns-cpp.h \
    Sharpvpn/Chinadns/src/chinadns.h \
    Sharpvpn/Chinadns/src/config.h \
    Sharpvpn/Chinadns/src/local_ns_parser.h

FORMS    += mainwindow.ui \
    logdialog.ui

DISTFILES += \
    Sharpvpn/sample/client.json \
    Sharpvpn/sample/server.json \
    Sharpvpn/build/SharkVPN/Debug/TestRUDPClient.instr.pdb \
    Sharpvpn/build/SharkVPN/Debug/TestRUDPServer.instr.pdb \
    Sharpvpn/build/SharkVPN/Debug/libglog.dll \
    Sharpvpn/build/SharkVPN/Debug/libsodium.dll \
    Sharpvpn/build/SharkVPN/SharkVPN.VC.db \
    Sharpvpn/build/SharkVPN/ReliableUDP/ClassDiagram.cd \
    Sharpvpn/build/SharkVPN/ReliableUDP/ReliableUDP.vcxproj \
    Sharpvpn/build/SharkVPN/ReliableUDP/ReliableUDP.vcxproj.filters \
    Sharpvpn/build/SharkVPN/SharkVPN/SharkVPN.vcxproj \
    Sharpvpn/build/SharkVPN/SharkVPN/SharkVPN.vcxproj.filters \
    Sharpvpn/build/SharkVPN/TestRUDPClient/TestRUDPClient.vcxproj \
    Sharpvpn/build/SharkVPN/TestRUDPClient/TestRUDPClient.vcxproj.filters \
    Sharpvpn/build/SharkVPN/TestRUDPServer/TestRUDPServer.rc \
    Sharpvpn/build/SharkVPN/TestRUDPServer/TestRUDPServer.vcxproj \
    Sharpvpn/build/SharkVPN/TestRUDPServer/TestRUDPServer.vcxproj.filters \
    Sharpvpn/build/SharkVPN/SharkVPN.sln \
    Sharpvpn/sample/chinadns_chnroute.txt \
    Sharpvpn/ReliableFastUDP/CMakeLists.txt \
    Sharpvpn/CMakeLists.txt \
    Sharpvpn/build/SharkVPN/ReliableUDP/Debug/ReliableUDP.Build.CppClean.log \
    Sharpvpn/build/SharkVPN/ReliableUDP/Debug/ReliableUDP.log \
    Sharpvpn/build/SharkVPN/SharkVPN/Debug/SharkVPN.log \
    Sharpvpn/build/SharkVPN/TestRUDPClient/Debug/TestRUDPClient.Build.CppClean.log \
    Sharpvpn/build/SharkVPN/TestRUDPClient/Debug/TestRUDPClient.log \
    Sharpvpn/build/SharkVPN/TestRUDPServer/Debug/TestRUDPServer.Build.CppClean.log \
    Sharpvpn/build/SharkVPN/TestRUDPServer/Debug/TestRUDPServer.log \
    Sharpvpn/Chinadns/CHANGES \
    Sharpvpn/Chinadns/chnroute.txt \
    Sharpvpn/Chinadns/COPYING \
    Sharpvpn/Chinadns/README.md
