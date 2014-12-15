# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal

DESCRIPTION="C->Haskell FFI tool that gives some cross-language type safety"
HOMEPAGE="https://github.com/haskell/c2hs"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="test"

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	>=dev-haskell/language-c-0.4.2 <dev-haskell/language-c-0.5
	>=dev-lang/ghc-6.10.4
	test? ( dev-haskell/hunit
		>=dev-haskell/shelly-1.0
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/text
		>=dev-haskell/yaml-0.8 )
"
