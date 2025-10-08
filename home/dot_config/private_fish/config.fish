if status is-interactive
	zoxide init fish | source
	set -g fish_autosuggestion_enabled 0
	set -U fish_greeting
end
eval (/opt/homebrew/bin/brew shellenv)
