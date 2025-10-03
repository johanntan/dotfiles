function fish_prompt
    # --- Current directory ---
    set -l cwd (pwd)
    set cwd (string replace -r "^$HOME" "~" $cwd)
    set parts (string split "/" $cwd)
    if test (count $parts) -ge 2
        set short (string join "/" $parts[-2..-1])
    else
        set short $parts[-1]
    end

    # --- Hostname (only if SSH) ---
    set -l host ''
    if set -q SSH_CONNECTION
        set host (hostname -s)
        set host "$host:"
    end

    # --- Git branch/status ---
    set -l git_info ''
    if type -q git
        # Get branch or commit hash
        set branch (command git symbolic-ref --short HEAD 2>/dev/null)
        if test -z "$branch"
            set branch (command git rev-parse --short HEAD 2>/dev/null)
        end

        if test -n "$branch"
            # Check for dirty working tree
            if not command git diff --quiet --ignore-submodules --cached 2>/dev/null
                set branch "$branch*"
            else if not command git diff --quiet --ignore-submodules 2>/dev/null
                set branch "$branch*"
            end
            set git_info " ($branch)"
        end
    end

    # --- Prompt symbol (# for root, > otherwise) ---
    set -l symbol ">"
    if test "$USER" = "root"
        set symbol "#"
    end

    # --- Final prompt ---
    echo -n "$host$short$git_info $symbol "
end
