if [[ `uname` == "Linux" ]]; then
	location="/home/linuxbrew/.linuxbrew"
elif [[ `uname` == "Darwin" ]]; then
	location="/opt/homebrew"
fi
if [[ -n $location && -d $location ]]; then
	export HOMEBREW_NO_ANALYTICS=1
	export HOMEBREW_NO_EMOJI=1
	export HOMEBREW_NO_ANALYTICS=1
	export HOMEBREW_NO_ENV_HINTS=1
	export HOMEBREW_NO_INSTALL_CLEANUP=1
	export HOMEBREW_NO_AUTO_UPDATE=1
	alias bu="brew update"
	alias bug="brew upgrade"
	alias bi="brew install"
	alias bic="brew install --cask"
	alias bcl="brew cleanup"
	eval $($location/bin/brew shellenv)
fi
