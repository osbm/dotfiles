
# Add aliases
# show everything
alias ll="ls -la"

alias gitdir="cd ~/Documents/GitHub"
alias gpuname="nvidia-smi --query-gpu=name --format=csv,noheader"
alias py="ipython"

alias l="ls -lFha"


# sort according to size
alias lt='ls --human-readable --size -1 -S --classify'

alias fastping='ping -c 100 -s.2'
alias ve='python -m venv .venv'
alias va='source ./.venv/bin/activate'

alias free='free -h'

# to set the default editor to nano
FCEDIT=nano

#  stop autocorrection in z shell
unsetopt correct


# import -window root example.png

sound() {
  # plays sounds in sequence and waits for them to finish
  for s in $@; do
    paplay $s
  done
}
sn1() {
  sound /usr/share/sounds/ubuntu/stereo/dialog-information.ogg
}
sn2() {
  sound /usr/share/sounds/freedesktop/stereo/complete.oga
}
sn3() {
  sound /usr/share/sounds/freedesktop/stereo/suspend-error.oga
}
