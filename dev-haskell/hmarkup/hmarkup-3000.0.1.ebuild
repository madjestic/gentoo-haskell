# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Simple wikitext-like markup format implementation"
HOMEPAGE="http://hackage.haskell.org/package/hmarkup"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/network-uri:=[profile?]
	dev-haskell/parsec:=[profile?]
	>=dev-haskell/xhtml-3000.0.0:=[profile?]
	>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2"

src_prepare() {
	epatch "${FILESDIR}"/${P}-network.patch
	cabal_chdeps \
		'network' 'network, network-uri'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=split-base
}
