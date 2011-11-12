# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="A library of statistical types, data, and functions"
HOMEPAGE="https://github.com/bos/statistics"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# tests fail, maybe they might work in some locales
# CDF limit at +tests: <stdout>: commitBuffer: invalid argument (Invalid or incomplete multibyte or wide character)
RESTRICT="test"

RDEPEND=">=dev-haskell/deepseq-1.1.0.0
		dev-haskell/erf
		>=dev-haskell/monad-par-0.1.0.1
		>=dev-haskell/mwc-random-0.8.0.5
		>=dev-haskell/primitive-0.3
		>=dev-haskell/vector-0.7.0.0
		>=dev-haskell/vector-algorithms-0.4
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/ieee754-0.7.3
			dev-haskell/hunit
			>=dev-haskell/quickcheck-2.4.0.1
			<dev-haskell/test-framework-0.5
			<dev-haskell/test-framework-hunit-0.3
			<dev-haskell/test-framework-quickcheck2-0.3
		)"

src_prepare() {
	# ghc 6.12.3 Haskell Platform 2010.02.0.0 wants deepseq >= 1.1.0.0
	sed -e 's@deepseq >= 1.1.0.2@deepseq >= 1.1.0.0@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
	# upstream forgot to include the tests in the tarball
	cp -pR "${FILESDIR}/Tests" tests/Tests
}

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
