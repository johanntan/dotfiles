export PATH=$HOME/bin:$HOME/.local/bin:$PATH
shopt -s histappend;
shopt -s cdspell;
shopt -s autocd     # change to named dir
bind "set completion-ignore-case on" # case insensitive tab completion

if [ -d "$HOME/.bashrc.d" ]; then
	for config in "$HOME/.bashrc.d"/*.sh; do
		[ -r "$config" ] && source "$config"
	done
fi
