if command -q mate
	set -gx EDITOR "mate -w "
	set -gx VISUAL "mate -w "
else
	set -gx EDITOR vim
end
