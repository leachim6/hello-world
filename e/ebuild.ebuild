# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
<<<<<<< HEAD:e/ebuild.ebuild
#!/bin/bash
=======
>>>>>>> 263b9827df311f739b4a4a224cec39d76db5f460:e/ebuild.ebuild

DESCRIPTION="Hello World"
HOMEPAGE="http://hello-world.org/"
SRC_URI="http://hello-world.org/"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_compile() {
	einfo "Hello World"
}
