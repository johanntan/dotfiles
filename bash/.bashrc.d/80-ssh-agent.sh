# Set the 1password ssh agent on Mac

if [[ `uname` == "Darwin" ]]; then
	if [ -d ~/Library/Group\ Containers/group.strongbox.mac.mcguill ]; then
		export SSH_AUTH_SOCK=~/Library/Group\ Containers/group.strongbox.mac.mcguill/agent.sock
	fi
fi
