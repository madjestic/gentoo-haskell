# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Numeric Linear Algebra"
HOMEPAGE="https://github.com/albertoruiz/hmatrix"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/random:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/storable-complex:=[profile?]
	>=dev-haskell/vector-0.8:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	virtual/blas
	virtual/lapack
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

PATCHES=("${FILESDIR}"/${PN}-0.19.0.0-gentoo-blas.patch)
