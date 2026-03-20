if [[ "`uname`" == "Darwin" ]]; then
	EDITOR="mate -w"
	export VISUAL="mate -w"
elif [[ "`uname`" == "Linux" ]] && command -v rmate &>/dev/null; then
	EDITOR="rmate -w"
else
	EDITOR=nano
fi
export EDITOR
