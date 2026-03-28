export PATH=$HOME/bin:$HOME/.local/bin:$PATH
export HISTSIZE=32768;
export HISTFILESIZE="${HISTSIZE}";
export SAVEHIST=4096
export HISTCONTROL=ignoredups:erasedups

shopt -s histappend;
shopt -s cdspell;
shopt -s autocd     # change to named dir
bind "set completion-ignore-case on" # case insensitive tab completion

if [ -d "$HOME/.bashrc.d" ]; then
	for config in "$HOME/.bashrc.d"/*.sh; do
		[ -r "$config" ] && source "$config"
	done
fi
