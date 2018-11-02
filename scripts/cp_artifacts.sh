#!/bin/sh
set -eu

VERSION=`cat package.json | jq -r '.version'`
SRC=$1
DEST=$2

cp "${SRC}/${NAME}${VERSION}-win-ia32.zip" "${DEST}/${NAME}-desktop-${VERSION}-win-ia32.zip"
cp "${SRC}/${NAME}-${VERSION}-win-x64.zip" "${DEST}/${NAME}-desktop-${VERSION}-win-x64.zip"
cp "${SRC}/squirrel-windows/${NAME}-setup-${VERSION}.exe" "${DEST}/${NAME}-setup-${VERSION}-x64.exe"
cp "${SRC}"/squirrel-windows-ia32/*.exe "${DEST}/"
cp "${SRC}"/${NAME}-desktop-*.zip "${DEST}/"
cp "${SRC}"/*.tar.gz "${DEST}/"
cp "${SRC}"/*.deb "${DEST}/"\
