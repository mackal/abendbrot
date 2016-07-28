# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit libretro-core toolchain-funcs

DESCRIPTION="libretro implementation of bNES/higan. (Nintendo Entertainment System)"
HOMEPAGE="https://github.com/libretro/bnes-libretro"
SRC_URI="https://github.com/libretro/bnes-libretro/archive/0e30b99baf08fe40162d71097249e84a0c6c7c21.tar.gz -> ${P}.tar.gz"
RESTRICT="primaryuri"

S="${WORKDIR}/bnes-libretro-0e30b99baf08fe40162d71097249e84a0c6c7c21"

if [[ ${PV} == 9999 ]]; then
	EGIT_REPO_URI="https://github.com/libretro/bnes-libretro.git"
	KEYWORDS=""
else
	KEYWORDS="amd64 x86"
fi

LICENSE="GPL-3"
SLOT="0"

RDEPEND=""
DEPEND="${RDEPEND}"

pkg_pretend() {
	#doesn't compile with >gcc5, see bug https://github.com/libretro/bnes-libretro/issues/7
	if [[ ${MERGE_TYPE} != binary  && $(tc-getCC) == *gcc* ]]; then
		if [[ $(gcc-major-version) -gt 4 ]] ; then
			die 'The active compiler needs to be gcc 4.9 (or older)'
		fi
	fi
}