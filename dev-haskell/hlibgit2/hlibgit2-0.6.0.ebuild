# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Low-level bindings to libgit2."
HOMEPAGE="http://hackage.haskell.org/package/hlibgit2"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/bindings-dsl-1.0.11:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		dev-libs/libgit2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10"
