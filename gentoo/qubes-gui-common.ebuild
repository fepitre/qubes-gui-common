# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Maintainer: Frédéric Pierret <frederic.epitre@orange.fr>

EAPI=6

inherit git-r3 eutils multilib

MY_PV=${PV/_/-}
MY_P=${PN}-${MY_PV}

KEYWORDS="amd64"
EGIT_REPO_URI="https://github.com/QubesOS/qubes-gui-common.git"
EGIT_COMMIT="v${PV}"
DESCRIPTION="Common files for Qubes GUI - protocol headers"
HOMEPAGE="http://www.qubes-os.org"
LICENSE="GPLv2"

SLOT="0"
IUSE=""

DEPEND=""
RDEPEND=""
PDEPEND=""

src_install() {
    insinto 'usr/include'
    doins 'include/qubes-gui-protocol.h'
    doins 'include/qubes-xorg-tray-defs.h'
}
