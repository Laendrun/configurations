export PATH="/usr/local/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa

HOST_NAME=laendrun

source ~/.nvm/nvm.sh
nvm use stable
shopt -s histappend

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset)

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1=">"

function mkcd()
{
	mkdir $1 && cd $1
}

# -------
# Aliases
# -------
alias o="open ." # Open the current directory in Finder
alias c="code ." # Open the current directory in VSCode

# -----------
# Git Aliases
# -----------
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"

# ----------
# 42 Aliases
# ----------
alias laurinette="norminette"
