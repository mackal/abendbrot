# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="Papirus icon theme for GTK and KDE"
HOMEPAGE="https://github.com/PapirusDevelopmentTeam/papirus-icon-theme"
SRC_URI=""
EGIT_REPO_URI="https://github.com/PapirusDevelopmentTeam/papirus-icon-theme.git"
LICENSE="GPL-3"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/share/icons
	doins -r Papirus Papirus-Dark
}
