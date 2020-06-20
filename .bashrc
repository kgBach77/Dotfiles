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
alias pc="!!"
alias bash-reload="source ~/.bashrc"
alias cs="cd $1; ls"

alias hermes-ssh="ssh kyle@75.83.87.218 -p 53292"
alias hermes-vnc="ssh -L 5901:localhost:5901 -N -f -p 53292 -l kyle 75.83.87.218"

alias dionysus-vnc="ssh -L 5801:localhost:5801 -N -f -p 53291 -l kyle 75.83.87.218"
alias dionysus-ssh="ssh kyle@75.83.87.218 -p 53291"

function mcd(){
	
	mkdir $1
	cd $1
}


function ccompile(){
	
	gcc $1 -o $2
	./$2
}

# Copies a C template file into the current directory and renames it
# to parameter 1
function cbase(){
	
	cp /home/kyle/Files/Cbase/cbase.c  $(pwd)
	mv cbase.c $1
	
}

export PATH="${PATH}:${HOME}/.local/bin/"
neofetch
cowsay install gentoo
