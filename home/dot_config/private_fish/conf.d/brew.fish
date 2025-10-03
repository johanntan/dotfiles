if not set -q HOMEBREW_PREFIX
    if test -e /opt/homebrew/bin/brew
        /opt/homebrew/bin/brew shellenv | source
    else if test -e /home/.linuxbrew/bin/brew
        /home/linuxbrew/.linuxbrew/bin/brew shellenv | source
    else
        return 1
    end
end

set -q HOMEBREW_NO_ANALYTICS || set -gx HOMEBREW_NO_ANALYTICS 1
set -gx HOMEBREW_NO_EMOJI 1
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx HOMEBREW_NO_INSTALL_CLEANUP 1
set -gx HOMEBREW_NO_ENV_HINTS 1
set -gx HOMEBREW_NO_AUTO_UPDATE 1

abbr -a bu brew update
abbr -a bi brew install
abr -a bcl brew cleanup
abbr -a bou brew outdated
abbr -a bug brew upgrade
