# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DEADBEEF_GUI="yes"

inherit deadbeef-plugins git-r3

GITHUB_USERNAME="cboxdoerfer"
GITHUB_REPOSITORY="ddb_spectrogram"

DESCRIPTION="DeaDBeeF spectrogram plugin"
HOMEPAGE="https://github.com/${GITHUB_USERNAME}/${GITHUB_REPOSITORY}"
EGIT_REPO_URI="https://github.com/${GITHUB_USERNAME}/${GITHUB_REPOSITORY}.git"
EGIT_COMMIT="309aba047017c6427d12ded98608c398cf8cbe23"

LICENSE="GPL-2"
KEYWORDS="~*"

RDEPEND="sci-libs/fftw:3.0"

DEPEND="${RDEPEND}"

src_prepare() {
	epatch "${FILESDIR}/${PN}-cflags.patch"
}
