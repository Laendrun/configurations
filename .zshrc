eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa

HOST_NAME=laendrun

source ~/.nvm/nvm.sh
nvm use stable

PROMPT="%~$ > "

# --------------
# Git Aliases
# --------------

alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"

# --------------
# 42 Aliases
# --------------

alias laurinette="norminette"
alias francinette="/Users/laendrun/francinette/tester.sh"
alias paco="/Users/laendrun/francinette/tester.sh"
