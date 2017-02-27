# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Values to help with elm-package, elm-make, and elm-lang.org"
HOMEPAGE="http://elm-lang.org"
SRC_URI="https://github.com/elm-lang/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="dev"

RDEPEND=">=dev-haskell/aeson-0.11:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	>=dev-haskell/ansi-terminal-0.6.2.1:=[profile?] <dev-haskell/ansi-terminal-0.7:=[profile?]
	>=dev-haskell/ansi-wl-pprint-0.6.7:=[profile?] <dev-haskell/ansi-wl-pprint-0.7:=[profile?]
	>=dev-haskell/binary-0.7.0.0:=[profile?]
	>=dev-haskell/edit-distance-0.2:=[profile?] <dev-haskell/edit-distance-0.3:=[profile?]
	>=dev-haskell/indents-0.3:=[profile?] <dev-haskell/indents-0.4:=[profile?]
	>=dev-haskell/language-ecmascript-0.15:=[profile?] <dev-haskell/language-ecmascript-0.18:=[profile?]
	>=dev-haskell/language-glsl-0.0.2:=[profile?] <dev-haskell/language-glsl-0.3:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/parsec-3.1.1:=[profile?] <dev-haskell/parsec-3.5:=[profile?]
	>=dev-haskell/text-1:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-haskell/union-find-0.2:=[profile?] <dev-haskell/union-find-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/filemanip-0.3.5 <dev-haskell/filemanip-0.4
		>=dev-haskell/hunit-1.1 <dev-haskell/hunit-2
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		>dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-0.4 )
"

PATCHES=(
	"${FILESDIR}"/${P}-aeson-pretty-0.8.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'binary >= 0.7.0.0 && < 0.8' 'binary >= 0.7.0.0' \
		'aeson-pretty < 0.8' 'aeson-pretty < 0.9'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag dev dev)
}