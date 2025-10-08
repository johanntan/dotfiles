if status is-interactive
	zoxide init fish | source
	set -g fish_autosuggestion_enabled 0
	set -U fish_greeting
end
if not set -q HOMEBREW_PREFIX
    if test -e /opt/homebrew/bin/brew
        eval (/opt/homebrew/bin/brew shellenv)
    else if test -e /home/.linuxbrew/bin/brew
        eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    else
        return 1
    end
end

