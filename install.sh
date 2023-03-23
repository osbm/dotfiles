# change directory to the location of this script
cd "$(dirname "$0")"

# change default shell to zsh
chsh -s $(which zsh)

# create my folders
mkdir -p ~/Documents/GitHub
mkdir -p ~/Documents/temp
mkdir -p ~/Pictures/screenshots
mkdir -p ~/Documents/tempdir/old_config_files

link_file() {
  if [ -f ~/$1 ]; then
    mv ~/$1 ~/Documents/tempdir/old_config_files/$1
  fi
  ln -s src/$1 $2
}

link_file .zshrc ~
link_file .zprofile ~
link_file .gitconfig ~
