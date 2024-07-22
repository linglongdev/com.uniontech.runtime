#!/bin/bash
set -e
project="$(pwd)"
pkg=qt5integration
echo "build $pkg"
cd "$project"
mkdir -p "linglong/sources/.build_cache/$pkg"
cd "linglong/sources/.build_cache/$pkg"

qmake -makefile PREFIX="${PREFIX}" \
    MIME_TYPE_FILE_INSTALL_PATH="$PREFIX/share/mime/packages" \
    LIB_INSTALL_DIR="${PREFIX}/lib/${TRIPLET}" \
    "../../$pkg"
make "-j$JOBS"
make install