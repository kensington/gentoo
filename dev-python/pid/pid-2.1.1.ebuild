# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python{2_7,3_5} )

inherit distutils-r1

DESCRIPTION="Pidfile featuring stale detection and file-locking"
HOMEPAGE="https://pypi.org/project/pid/ https://github.com/trbs/pid/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="amd64"

DEPEND="dev-python/nose[${PYTHON_USEDEP}]"

python_test() {
	nosetests || die
}
