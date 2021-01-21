# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !
# export PATH="${PATH}:${HOME}/.local/bin/"
# alias nut="echo nut"

# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.
alias bash-reload="source ~/.bashrc"

alias hermes-ssh="ssh kyle@75.83.87.218 -p 53292"
alias hermes-vnc="ssh -L 5901:localhost:5901 -N -f -p 53292 -l kyle 75.83.87.218"

alias dionysus-vnc="ssh -L 5801:localhost:5801 -N -f -p 53291 -l kyle 75.83.87.218"
alias dionysus-ssh="ssh kyle@75.83.87.218 -p 53291"

alias github="cd ~/GitHub"

export PATH="${PATH}:${HOME}/.local/bin/"
neofetch
cowsay install gentoo
