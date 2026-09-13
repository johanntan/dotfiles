if [ -d $HOME/.cargo ]; then
	. $HOME/.cargo/env
	command -v sccache&>/dev/null && export RUSTC_WRAPPER=sccache
fi
