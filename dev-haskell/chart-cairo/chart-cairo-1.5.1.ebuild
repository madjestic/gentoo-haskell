# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Chart-cairo"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Cairo backend for Charts"
HOMEPAGE="https://github.com/timbod7/haskell-chart/wiki"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cairo-0.9.11:=[profile?]
	>=dev-haskell/chart-1.5:=[profile?] <dev-haskell/chart-1.6:=[profile?]
	>=dev-haskell/colour-2.2.1:=[profile?] <dev-haskell/colour-2.4:=[profile?]
	<dev-haskell/data-default-class-0.1:=[profile?]
	>=dev-haskell/lens-3.9:=[profile?] <dev-haskell/lens-4.13:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/operational-0.2.2:=[profile?] <dev-haskell/operational-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

S="${WORKDIR}/${MY_P}"
