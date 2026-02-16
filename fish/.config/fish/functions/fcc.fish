
function fcc -d 'Fish Currency Converter'
    argparse \
        -x 'v,h' \
        'v/version' 'h/help' -- $argv
    or return 1

    set --local version_fcc '20251126'

    if set -q _flag_version
        echo "This is FCC version" $version_fcc
    else if set -q _flag_help
        __fcc_help
    else
if test (count $argv) -lt 3
    echo "Usage: fcc value source_currency target_currency"
return 1
end

# xe.com accepts only CAPITALIZED currency codes
set -l value $argv[1]
set -l from (string upper $argv[2])
set -l to (string upper $argv[3])

# sed with updated regexp (2024-01-29)
set -l result (curl -sSL "https://www.xe.com/currencyconverter/convert/?Amount=$value&From=$from&To=$to" | sed -nE 's/.*>([0-9]+\.[0-9]+)<\/span><span class="amount-input.*$/\1/p')
echo "$value $from = $result $to";

    end
end

# helper function
function __fcc_help
    printf '%s\n' \
        'Usage:' \
        '      fcc [OPTION] amount source_currency target_currency' \
        'OPTIONS:' \
        '      -v, --version       Show version info' \
        '      -h, --help          Show help'
end


