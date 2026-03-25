if command -v fzf &>/dev/null; then
	export FZF_DEFAULT_OPTS="--no-info --no-scrollbar --layout=reverse"
	eval "$(fzf --bash)"
fi
