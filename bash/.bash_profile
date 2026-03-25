export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="$HOME/.local/runtime" # macOS does not have session lifetime directories; alt: `~/Library/Caches`
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

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.bash 2>/dev/null || :
