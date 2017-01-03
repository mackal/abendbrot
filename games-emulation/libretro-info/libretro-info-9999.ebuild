# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit libretro

DESCRIPTION="Libretro info files required for libretro cores"
HOMEPAGE="https://github.com/libretro/libretro-super"
SRC_URI=""

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/libretro/libretro-super.git"
	KEYWORDS=""
else
	KEYWORDS="amd64 x86 arm"
fi

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	:
}

src_install() {
	insinto "${LIBRETRO_DATA_DIR}"/info
	doins dist/info/*.info
}
