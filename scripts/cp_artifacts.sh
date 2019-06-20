#!/bin/sh
set -eu

VERSION=`cat package.json | jq -r '.version'`
SRC=$1
DEST=$2

cp "${SRC}/wau-chat${VERSION}-win-ia32.zip" "${DEST}/wau-chat-desktop-${VERSION}-win-ia32.zip"
cp "${SRC}/wau-chat-${VERSION}-win-x64.zip" "${DEST}/wau-chat-desktop-${VERSION}-win-x64.zip"
cp "${SRC}/squirrel-windows/wau-chat-setup-${VERSION}.exe" "${DEST}/wau-chat-setup-${VERSION}-x64.exe"
cp "${SRC}/squirrel-windows-ia32/wau-chat-setup-${VERSION}-ia32.exe" "${DEST}/wau-chat-setup-${VERSION}-win32.exe"
cp "${SRC}"/wau-chat-desktop-*.zip "${DEST}/"
cp "${SRC}"/*.tar.gz "${DEST}/"
cp "${SRC}"/*.deb "${DEST}/"
cp "${SRC}"/*.AppImage "${DEST}/"\
