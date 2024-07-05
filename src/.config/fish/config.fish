if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx PATH /opt/cuda/bin $PATH
    set -gx LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH
    set -g fish_greeting

    # nnn configuration
    # H - show hidden files
    # d - detail view
    set -x NNN_OPTS Hd


    pyenv init - | source
    zoxide init fish | source
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# if test -f /home/osbm/.pyenv/versions/anaconda3-2023.03/bin/conda
#     eval /home/osbm/.pyenv/versions/anaconda3-2023.03/bin/conda "shell.fish" "hook" $argv | source
# end
# <<< conda initialize <<<

