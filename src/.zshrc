
# --------------- default manjaro zsh config ---------------
# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# --------------- Add aliases ---------------

alias l="ls -lFha"
alias la="ls -a"
alias lt="ls --human-readable --size -1 -S --classify"

alias fastping="ping -c 100 -i 0.2"
alias gpuname="nvidia-smi --query-gpu=name --format=csv,noheader"


alias py="ipython"
alias ve="python -m venv .venv"
alias va="source ./.venv/bin/activate"
alias pipu="pip install --upgrade pip"
alias pipr="pip install -r requirements.txt"

# human readable sizes
alias free="free -h"
alias df="df -h"
alias du="du -h"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias docker-stop="docker stop $(docker ps -a -q)"
alias docker-rm="docker rm $(docker ps -aq)"
alias docker-rmi="docker rmi $(docker images -q)"

# to set the default editor to nano
FCEDIT=nano

# to stop autocorrection in z shell
unsetopt correct

# --------------- pyenv config ---------------
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

sound() {
  # plays sounds in sequence and waits for them to finish
  for s in $@; do
    paplay $s
  done
}

# source ~/Documents/dotfiles/src/.config/z.sh

# export CUDA_HOME=/opt/cuda-11.7
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda-11.7/lib64
# export PATH=$PATH:$CUDA_HOME/bin

# pyenv for java
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

# pyenv for node
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# go
# export GOPATH="$HOME/.go"
# export PATH="$PATH:$GOPATH/bin"

