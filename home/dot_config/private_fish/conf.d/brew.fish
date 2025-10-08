# if not set -q HOMEBREW_PREFIX
    if test -e /opt/homebrew/bin/brew
        eval (/opt/homebrew/bin/brew shellenv)
    else if test -e /home/.linuxbrew/bin/brew
        eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    else
        return 1
    end
#end

if status is-interactive
	zoxide init fish | source
	set -g fish_autosuggestion_enabled 0
	set -U fish_greeting
end

set -q HOMEBREW_NO_ANALYTICS || set -gx HOMEBREW_NO_ANALYTICS 1
set -gx HOMEBREW_NO_EMOJI 1
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx HOMEBREW_NO_INSTALL_CLEANUP 1
set -gx HOMEBREW_NO_ENV_HINTS 1
set -gx HOMEBREW_NO_AUTO_UPDATE 1

abbr -a bu brew update
abbr -a bi brew install
abbr -a bic brew install --cask
abbr -a bcl brew cleanup
abbr -a bou brew outdated
abbr -a bug brew upgrade
abbr -a bs brew search
abbr -a bin brew info
abbr -a bun brew uninstal
abbr -a buz brew uninstall --zap
