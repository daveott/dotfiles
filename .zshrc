setopt promptsubst
autoload -U promptinit
promptinit
prompt dto

autoload -U compinit
compinit

autoload -Uz git-escape-magic
git-escape-magic

# color term
export CLICOLOR=1
export LSCOLORS=Dxfxcxdxbxegedabadacad
export ZLS_COLORS=$LSCOLORS
export LC_CTYPE=en_US.UTF-8
export LESS=FRX

export EDITOR=vim

# history
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

[ -e "$WORK_DIR" ] || WORK_DIR="$HOME/work"
export WORK_DIR

[ -e "$HASHROCKET_DIR" ] || HASHROCKET_DIR="$HOME/work/hashrocket"
export HASHROCKET_DIR

[ -e "$BERKLEE_DIR" ] || BERKLEE_DIR="$HOME/work/berklee"
export BERKLEE_DIR

# set cd autocompletion to commonly visited directories
cdpath=(~ $WORK_DIR $BERKLEE_DIR $HASHROCKET_DIR)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

TODO=~/.todo
function todo(){ if [ $# -eq 0 ]; then cat $TODO; else echo "• $@" >> $TODO; fi }

export PATH="/usr/local/sbin:/usr/local/bin:$PATH"

      # Add the following to your ~/.bashrc or ~/.zshrc
      hitch() {
        command hitch "$@"
        if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
      }
      alias unhitch='hitch -u'
      # Uncomment to persist pair info between terminal instances
      # hitch

alias loadpath='head -n 1 ~/Documents/load_path.txt |pbcopy'
