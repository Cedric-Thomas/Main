#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	clear
	cat /etc/logo.bcs
	sleep 3
	startx >/dev/null 2>&1
fi
