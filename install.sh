# change directory to the location of this script
cd "$(dirname "$0")"

# change default shell to zsh
# chsh -s $(which zsh)

# create my folders
mkdir -p ~/Documents/GitHub
mkdir -p ~/Documents/temp
mkdir -p ~/Pictures/screenshots
mkdir -p ~/Documents/tempdir/old_config_files

link_file() {
  # if that file exists, move it to the temp folder
  if [ -f ~/$1 ]; then
    echo "Moving ~/$1 to ~/Documents/temp/old_config_files/$1"
    # lets create that folder if it doesn't exist
    # get the folder name of the &1
    mkdir -p ~/Documents/temp/old_config_files/$(dirname $1)
    mv ~/$1 ~/Documents/temp/old_config_files/$1
  fi

  # if that folder exists, move it to the temp folder
  if [ -d ~/$1 ]; then
    echo "Moving ~/$1 to ~/Documents/temp/old_config_files/$1"
    # lets create that folder if it doesn't exist
    # get the folder name of the &1
    mkdir -p ~/Documents/temp/old_config_files/$(dirname $1)
    mv ~/$1 ~/Documents/temp/old_config_files/$1
  fi

  # if that file is already a symlink, remove it
  if [ -L ~/$1 ]; then
    echo "Removing ~/$1"
    rm -rf ~/$1
  fi

  echo "Linking ~/$1 to ~/Documents/GitHub/dotfiles/src/$1"
  ln -s ~/Documents/GitHub/dotfiles/src/$1 $2
}

link_file .config/tmux/tmux.conf ~/.config/tmux
link_file .zshrc ~
link_file .zprofile ~
link_file .gitconfig ~
link_file .i3/ ~/
link_file .config/i3-scrot.conf ~/.config
link_file .config/picom.conf ~/.config
link_file .config/nitrogen/ ~/.config/
link_file .config/flameshot/ ~/.config/
link_file .config/polybar/ ~/.config/
link_file .config/alacritty/ ~/.config/
link_file .config/ulauncher/ ~/.config/
