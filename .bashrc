#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
function rainbow
{
color=$(( $color + 1))
case $color in
	1) 
	PS1="╔══\[\e[1m\e[34m\]\H:\w\[\e[0m\]\n╚═════\[\e[1m\e[35m\]\u\[\e[0m\]╶╼ "
	;;
	2) 
	PS1="╔══\[\e[1m\e[34m\]\H:\w\[\e[0m\]\n╚═════\[\e[1m\e[34m\]\u\[\e[0m\]╶╼ "
	;;
	3) 
	PS1="╔══\[\e[1m\e[34m\]\H:\w\[\e[0m\]\n╚═════\[\e[1m\e[36m\]\u\[\e[0m\]╶╼ "
	;;
	4) 
	PS1="╔══\[\e[1m\e[34m\]\H:\w\[\e[0m\]\n╚═════\[\e[1m\e[32m\]\u\[\e[0m\]╶╼ "
	;;
	5) 
	PS1="╔══\[\e[1m\e[34m\]\H:\w\[\e[0m\]\n╚═════\[\e[1m\e[33m\]\u\[\e[0m\]╶╼ "
	;;
	6) 
	PS1="╔══\[\e[1m\e[34m\]\H:\w\[\e[0m\]\n╚═════\[\e[1m\e[31m\]\u\[\e[0m\]╶╼ "
	color=0
	;;
esac
}
PROMPT_COMMAND="rainbow"
