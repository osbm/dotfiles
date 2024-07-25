if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx PATH /opt/cuda/bin $PATH
    set -gx LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH
    set -g fish_greeting

    # nnn configuration
    # H - show hidden files
    # d - detail view
    set -x NNN_OPTS Hd

    alias du='du -h'
    alias df='df -h'
    alias free='free -h'

    alias l="ls -lah"

    alias ve="python -m venv .venv"
    alias va="source .venv/bin/activate.fish"
    alias pipr="pip install -r requirements.txt"
    alias pipu="pip install --upgrade pip"
    alias py="ipython"
    alias music-download="docker run -v /home/osbm/Music:/downloads yt -x --audio-format mp3"
    alias yt="docker run -v /home/osbm/Videos/youtube:/downloads yt"

    if type -q pyenv
        pyenv init - | source
    else
        echo "pyenv not found"
    end

    if type -q zoxide
        zoxide init fish | source
    else
        echo "zoxide not found"
    end

end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# if test -f /home/osbm/.pyenv/versions/anaconda3-2023.03/bin/conda
#     eval /home/osbm/.pyenv/versions/anaconda3-2023.03/bin/conda "shell.fish" "hook" $argv | source
# end
# <<< conda initialize <<<

