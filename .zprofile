# Setup environment for Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Setup environment for OpenShift Local
#eval $(crc oc-env)

#################################
# Aliases
#################################
alias ls='ls --color'
alias grep='grep --colour=auto'

#################################
# Environment variables
#################################

export PATH="$PATH:$HOME/bin"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

