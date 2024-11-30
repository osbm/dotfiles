
default:
    just -l


link_file path:
    mkdir -p {{home_directory()}}/{{parent_directory(path)}}
    rm -rf {{home_directory()}}/{{path}}
    ln -sf {{absolute_path(prepend("src/",path))}} {{home_directory()}}/{{path}}

link-alacritty: (link_file ".config/alacritty/alacritty.toml")
    echo "Alacritty configuration linked"

link-code: (link_file ".config/Code/User/settings.json")
    # link_file .config/Code/User/keybindings.json
    echo "VSCode configuration linked"

link-fcitx5: (link_file ".config/fcitx5")
    echo "Fcitx5 configuration linked"

link-flameshot: (link_file ".config/flameshot/flameshot.ini")
    echo "Flameshot configuration linked"

link-kitty: (link_file ".config/kitty/kitty.conf")
    echo "Kitty configuration linked"

link-mpv: (link_file ".config/mpv/mpv.conf")
    echo "mpv configuration linked"

link-neovim: (link_file ".config/nvim")
    echo "Neovim configuration linked"

link-tlrc: (link_file ".config/tlrc/tlrc.conf")
    echo "tlrc configuration linked"

link-tmux: (link_file ".config/tmux/tmux.conf")
    echo "Tmux configuration linked"

link-fish: (link_file ".config/fish")
    echo "Fish configuration linked"

link-git: (link_file ".gitconfig") (link_file ".gitignore")
    echo "Git configuration linked"

link-starship: (link_file ".config/starship.toml")
    echo "Starship configuration linked"

link-zsh: (link_file ".zshrc") (link_file ".zprofile")
    echo "Zsh configuration linked"

link-bash: (link_file ".bashrc") (link_file ".bash_profile")
    echo "Bash configuration linked"

link-terminal-programs: link-alacritty link-kitty link-tmux link-fish link-zsh link-bash link-neovim link-tlrc link-git link-starship
    echo "Terminal programs configuration linked"

link-all: link-terminal-programs link-code link-fcitx5 link-flameshot link-mpv
    echo "All configuration linked"

clone:
    echo "Please be informed that these repositories are private github repositories of osbm."
    git clone https://github.com/osbm/rerouting.git ~/Documents/rerouting
    git clone https://github.com/osbm/wallpapers.git ~/Pictures/wallpapers

create-default-folders:
    mkdir -p ~/Pictures/screenshots
    mkdir -p ~/Documents/bin
    mkdir -p ~/Documents/git
    mkdir -p ~/Documents/temp
    mkdir -p ~/Videos/obs-recordings
    mkdir -p ~/Videos/youtube

install-tpm:
    git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
    echo "Dont forget to install tmux plugins by 'C-s I'"

