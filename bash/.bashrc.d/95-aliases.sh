alias ll="ls -l"
alias lsd="ls -lF | grep '^d'"
alias reload="exec ${SHELL} -l"
alias path='echo -e ${PATH//:/\\n}'
alias fff=fanficfare
alias ffu="fanficfare -u"
if [[ `uname` == "Darwin" ]]; then
	alias cpwd="pwd|tr -d '\n'|pbcopy"
	alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
	alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
fi
