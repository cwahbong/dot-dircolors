#!/usr/bin/env sh
set -u

DIRCOLORS_DEFAULT_PREFIX="${HOME}/.dircolors"

CONFIG_INSTALL () {
	DIRCOLORS_PREFIX=${1:-$DIRCOLORS_DEFAULT_PREFIX}
	DIRCOLORS_CONF="$HOME/.dir_colors"

	if [ -L "$DIRCOLORS_CONF" ]; then
		rm "$DIRCOLORS_CONF"
		echo "Found old symlink and removed it..."
	fi

	ln -s "${DIRCOLORS_PREFIX}/dir_colors" "$DIRCOLORS_CONF" \
		&& echo "Conf installed succesfully."
}

CONFIG_HELP () {
	echo 'Usage: config.sh {install [prefix_path]|help}'
}

if [ $# -gt 0 ]; then
	OP=$1
	shift
fi
case ${OP:-} in
	"install")
		CONFIG_INSTALL $@
		;;
	"help")
		CONFIG_HELP $@
		;;
	*)
		CONFIG_HELP $@
		exit 1
		;;
esac
