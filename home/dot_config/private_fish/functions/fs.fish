# Determine size of a file or total size of a directory
function fs --description 'Determine size of a file or total size of a directory'
    # prefer GNU du's -b (bytes) when available; build flags as separate list elements
    set -l flags -s -h
    if command du -b /dev/null >/dev/null 2>&1
        set -a flags -b
    end

    if test (count $argv) -gt 0
        # respect `--` so filenames beginning with - are handled safely
        command du $flags -- $argv | string replace -r '/$' ''
    else
        # when no args, show sizes for entries in the current dir (including hidden, excluding . and ..)
        # fall back to current directory if there are no entries
        set -l entries (command ls -A 2>/dev/null)
        if test -n "$entries"
            command du $flags $entries | string replace -r '/$' ''
        else
            command du $flags . | string replace -r '/$' ''
        end
    end
end
