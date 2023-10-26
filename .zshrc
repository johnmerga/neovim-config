# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"
autoload -Uz compinit


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh




## Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.


#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi
#
## Set up the prompt
#
#autoload -Uz promptinit
#promptinit
#prompt adam1
#
#setopt histignorealldups sharehistory
#
## Use emacs keybindings even if our EDITOR is set to vi
#bindkey -e
#
## Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
#HISTSIZE=1000
#SAVEHIST=1000
#HISTFILE=~/.zsh_history
#
##
#
## Zsh Alias (same as Bash)
alias ll='ls --color=auto'
#alias go-store='cd ~/Documents/edu/projects/typescript/project/Store143-API/'
alias go-p='cd ~/Documents/project/john/'
alias go-f='cd ~/Documents/project/john/fpl-bot/'
#
#
## bun
#export BUN_INSTALL="$HOME/.bun"
#export PATH=$BUN_INSTALL/bin:$PATH
#
## nvm
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
## Zsh Function (same as Bash)
#my_function() {
#    echo "This is my custom function"
#}
## Use modern completion system
autoload -Uz compinit
#compinit
#
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
#
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
source ~/powerlevel10k/powerlevel10k.zsh-theme
#POWERLEVEL9K_MODE='nerdfont-complete'
#
## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
##env
#. "$HOME/.cargo/env"

# configure go envirement
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
function go_version {
    if [ -f "go.mod" ]; then
        v=$(grep -E '^go \d.+$' ./go.mod | grep -oE '\d.+$')
        if [[ ! $(go version | grep "go$v") ]]; then
          echo ""
          echo "About to switch go version to: $v"
          if ! command -v "$HOME/go/bin/go$v" &> /dev/null
          then
            echo "run: go install golang.org/dl/go$v@latest && go$v download && sudo cp \$(which go$v) \$(which go)"
            return
          fi
          sudo cp $(which go$v) $(which go)
        fi
    fi
}
#
## bun completions
#[ -s "/home/john/.bun/_bun" ] && source "/home/john/.bun/_bun"
