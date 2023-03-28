
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
alias gitdir="cd ~/Documents/GitHub"
alias tempdir="cd ~/Documents/temp"

alias l="ls -lFha"
alias la="ls -a"
alias lt="ls --human-readable --size -1 -S --classify"

alias fastping="ping -c 100 -i 0.2"
alias gpuname="nvidia-smi --query-gpu=name --format=csv,noheader"
alias screenshot="import -window root ~/Pictures/screenshots/$(date +%Y-%m-%d_%H-%M-%S).png"
alias terraria="dex ~/.local/share/applications/Terraria.desktop"
alias open="xdg-open"

alias py="ipython"
alias ve="python -m venv .venv"
alias va="source ./.venv/bin/activate"

# human readable sizes
alias free="free -h"
alias df="df -h"
alias du="du -h"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# to set the default editor to nano
FCEDIT=nano

# to stop autocorrection in z shell
unsetopt correct

# --------------- pyenv config ---------------
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

sound() {
  # plays sounds in sequence and waits for them to finish
  for s in $@; do
    paplay $s
  done
}
