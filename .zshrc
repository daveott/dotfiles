setopt promptsubst
autoload -U promptinit
promptinit
prompt dto

autoload -U compinit
compinit

# color term
export CLICOLOR=1
export LSCOLORS=Dxfxcxdxbxegedabadacad
export ZLS_COLORS=$LSCOLORS
export LC_CTYPE=en_US.UTF-8
export LESS=FRX
