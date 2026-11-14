# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="amlogic-boot-fip"
PKG_LICENSE="nonfree"
PKG_VERSION="405df00c0c4898f661e341e25c46920d82dfdc3d"
PKG_SITE="https://github.com/pasnov-oleksandr/amlogic-boot-fip"
PKG_URL=""
PKG_LONGDESC="Firmware Image Package (FIP) sources for Xiaomi Mi Box 4/4S (MDZ-22-AB)"
PKG_TOOLCHAIN="manual"
PKG_STAMP="${UBOOT_SYSTEM}"

unpack() {
mkdir -p ${PKG_BUILD}
cp -a /git/amlogic-boot-fip/* ${PKG_BUILD}/
}

makeinstall_target() {
mkdir -p ${INSTALL}/usr/share/bootloader
cp -a ${PKG_BUILD}/* ${INSTALL}/usr/share/bootloader/
}
