if [[ `uname` == "Darwin" ]]; then
	[ -d $HOME/Library/Android/sdk ] && export ANDROID_HOME=$HOME/Library/Android/sdk
	[ -d /opt/homebrew/share/android-ndk ] && export ANDROID_NDK_HOME="/opt/homebrew/share/android-ndk"
fi
