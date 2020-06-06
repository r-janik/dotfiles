alias ls="ls --color=auto"
alias grep="grep --color=auto"

if [ -n "$BASH_VERSION" ]; then
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx xmonad
fi

export PATH="$HOME/.cargo/bin:$PATH"
