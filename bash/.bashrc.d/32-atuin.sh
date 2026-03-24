if [ -d $HOME/.atuin/bin ]; then
	. $HOME/.atuin/bin/env
fi
if command -v atuin &>/dev/null; then
	eval "$(atuin init bash --disable-up-arrow)"
fi
