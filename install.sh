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

  # if that file is already a symlink, remove it
  if [ -L ~/$1 ]; then
    echo "Removing ~/$1"
    rm ~/$1
  fi

  echo "Linking ~/$1 to ~/Documents/GitHub/dotfiles/src/$1"
  ln -s ~/Documents/GitHub/dotfiles/src/$1 $2
}

link_file .zshrc ~
link_file .zprofile ~
link_file .gitconfig ~
link_file .config/i3-scrot.conf ~/.config
link_file .config/nitrogen/nitrogen.cfg ~/.config/nitrogen/