# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to the FFTW library"
HOMEPAGE="http://hackage.haskell.org/package/fft"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/carray-0.1.5:=[profile?] <dev-haskell/carray-0.2:=[profile?]
	>=dev-haskell/ix-shapable-0.1:=[profile?] <dev-haskell/ix-shapable-0.2:=[profile?]
	>=dev-haskell/storable-complex-0.2.1:=[profile?] <dev-haskell/storable-complex-0.3:=[profile?]
	>=dev-haskell/syb-0.1:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	>=sci-libs/fftw-3.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	virtual/pkgconfig
	test? ( >=dev-haskell/quickcheck-2.5 <dev-haskell/quickcheck-3 )
"
