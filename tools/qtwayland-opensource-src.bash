#!/bin/bash
set -e
project="$(pwd)"
pkg=qtwayland-opensource-src
echo "build $pkg"
cd "$project"
mkdir -p "linglong/sources/.build_cache/$pkg"
cd "linglong/sources/.build_cache/$pkg"

qmake -makefile PREFIX="${PREFIX}" \
    LIB_INSTALL_DIR="${PREFIX}/lib/${TRIPLET}" \
    "../../$pkg"
make "-j$JOBS"
make install
cp src/client/qwayland-hardware-integration.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/qwayland-qt-windowmanager.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/qwayland-qt-key-unstable-v1.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/qwayland-server-buffer-extension.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/qwayland-surface-extension.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/qwayland-tablet-unstable-v2.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/qwayland-text-input-unstable-v2.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/qwayland-touch-extension.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/qwayland-wayland.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/qwayland-wp-primary-selection-unstable-v1.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/qwayland-xdg-output-unstable-v1.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/wayland-hardware-integration-client-protocol.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/wayland-qt-windowmanager-client-protocol.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/wayland-qt-key-unstable-v1-client-protocol.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/wayland-server-buffer-extension-client-protocol.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/wayland-surface-extension-client-protocol.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/wayland-tablet-unstable-v2-client-protocol.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/wayland-touch-extension-client-protocol.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/wayland-wayland-client-protocol.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/wayland-wp-primary-selection-unstable-v1-client-protocol.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
cp src/client/wayland-xdg-output-unstable-v1-client-protocol.h /runtime/include/$TRIPLET/qt5/QtWaylandClient/*/QtWaylandClient/private/
