# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGIT_REPO_URI="https://github.com/hololeap/reflex"
inherit git-r3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Higher-order Functional Reactive Programming"
HOMEPAGE="https://reflex-frp.org"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="debug-trace-events fast-weak use-reflex-optimizer +use-template-haskell"

RDEPEND=">=dev-haskell/bifunctors-5.2:=[profile?] <dev-haskell/bifunctors-5.6:=[profile?]
	dev-haskell/comonad:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/dependent-map-0.2.4:=[profile?] <dev-haskell/dependent-map-0.3:=[profile?]
	>=dev-haskell/exception-transformers-0.4:=[profile?] <dev-haskell/exception-transformers-0.5:=[profile?]
	>=dev-haskell/lens-4.7:=[profile?] <dev-haskell/lens-5:=[profile?]
	>=dev-haskell/memotrie-0.6:=[profile?] <dev-haskell/memotrie-0.7:=[profile?]
	>=dev-haskell/monad-control-1.0.1:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/monoidal-containers-0.4:=[profile?] <dev-haskell/monoidal-containers-0.5:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/prim-uniq-0.1.0.1:=[profile?] <dev-haskell/prim-uniq-0.2:=[profile?]
	>=dev-haskell/primitive-0.5:=[profile?] <dev-haskell/primitive-0.7:=[profile?]
	>=dev-haskell/random-1.1:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/ref-tf-0.4:=[profile?] <dev-haskell/ref-tf-0.5:=[profile?]
	>=dev-haskell/reflection-2.1:=[profile?] <dev-haskell/reflection-2.2:=[profile?]
	>=dev-haskell/semigroupoids-4.0:=[profile?] <dev-haskell/semigroupoids-6:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/syb-0.5:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/these-0.4:=[profile?] <dev-haskell/these-0.8:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?]
	>=dev-haskell/unbounded-delays-0.1.0.0:=[profile?] <dev-haskell/unbounded-delays-0.2:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	use-template-haskell? ( >=dev-haskell/dependent-sum-0.3:=[profile?] <dev-haskell/dependent-sum-0.5:=[profile?]
				>=dev-haskell/haskell-src-exts-1.16:=[profile?] <dev-haskell/haskell-src-exts-1.21:=[profile?]
				>=dev-haskell/haskell-src-meta-0.6:=[profile?] <dev-haskell/haskell-src-meta-0.9:=[profile?] )
	!use-template-haskell? ( >=dev-haskell/dependent-sum-0.4:=[profile?] <dev-haskell/dependent-sum-0.5:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/filemanip
		dev-haskell/hlint
		dev-haskell/split )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug-trace-events debug-trace-events) \
		$(cabal_flag fast-weak fast-weak) \
		$(cabal_flag use-reflex-optimizer use-reflex-optimizer) \
		$(cabal_flag use-template-haskell use-template-haskell)
}