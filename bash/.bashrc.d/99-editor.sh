if [[ "`uname`" == "Darwin" ]]; then
	EDITOR="mate -w"
	VISUAL="mate -w"
elif [[ "`uname`" == "Linux" ]] && command -q rmate; then
	EDITOR="rmate -w"
else
	EDITOR=nano
fi
export EDITOR
