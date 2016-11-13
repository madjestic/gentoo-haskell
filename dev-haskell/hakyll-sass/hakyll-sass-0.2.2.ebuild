# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Hakyll SASS compiler over hsass"
HOMEPAGE="https://github.com/meoblast001/hakyll-sass"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/data-default-class-0.0.1:=[profile?]
	>=dev-haskell/hakyll-4.7.0:=[profile?]
	>=dev-haskell/hsass-0.2.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

PATCHES=("${FILESDIR}"/${P}-notneed-aeson-pretty.patch)
