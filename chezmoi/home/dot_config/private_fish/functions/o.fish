function o --description 'Open path(s) or current directory cross-platform (macOS, Linux, WSL)'
    # choose opener
    set -l opener
    if test (uname -s) = Darwin
        set opener open
    else if test -e /proc/version
        if grep -q Microsoft /proc/version
            set opener explorer.exe
        else if type -q xdg-open
            set opener xdg-open
        end
    else if type -q xdg-open
        set opener xdg-open
    end

    if test -z "$opener"
        printf '%s\n' "No opener found. Install xdg-open or run on macOS/WSL." >&2
        return 1
    end

    # default to current dir when no args
    if test (count $argv) -eq 0
        set targets .
    else
        set targets $argv
    end

    for t in $targets
        # don't convert URLs or file:// URIs for WSL
        if test "$opener" = explorer.exe
            if not string match -r '^(https?|file)://' -- "$t"
                # convert POSIX path to Windows path
                set t (wslpath -w -- "$t" 2>/dev/null)
            end
        end

        # open each target in background so command doesn't block
        $opener "$t" &
    end
end