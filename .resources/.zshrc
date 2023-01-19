# Enable colors and change prompt:

autoload -U colors && colors

PS1="%B%{$fg[blue]%}%~%{$fg[blue]%}⟩⟩%{$reset_color%}%b "

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

#alias

alias ls="ls -al"
alias dwn="cd storage/downloads"

neofetch
