if status is-interactive
	zoxide init fish | source
	atuin init fish --disable-up-arrow | source
	set -g fish_autosuggestion_enabled 0
	set -U fish_greeting
	source $HOME/.config/op/plugins.sh
end
set -gx DTK_PROGRAM swiftmac
