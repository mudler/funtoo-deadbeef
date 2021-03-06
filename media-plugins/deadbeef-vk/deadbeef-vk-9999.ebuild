# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DEADBEEF_GUI="yes"

inherit cmake-utils deadbeef-plugins git-r3

GITHUB_USERNAME="scorpp"
GITHUB_REPOSITORY="db-vk"

DESCRIPTION="DeaDBeeF plugin for listening music from vkontakte.com"
HOMEPAGE="https://github.com/${GITHUB_USERNAME}/${GITHUB_REPOSITORY}"
EGIT_REPO_URI="git://github.com/${GITHUB_USERNAME}/${GITHUB_REPOSITORY}.git"

LICENSE="GPL-2"
KEYWORDS=""

RDEPEND="dev-libs/json-glib
	media-sound/deadbeef[curl]"

DEPEND="${RDEPEND}"

S="${WORKDIR}/${GITHUB_REPOSITORY}-${PV}"
