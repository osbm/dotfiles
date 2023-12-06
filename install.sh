# change directory to the location of this script
cd "$(dirname "$0")"

# change default shell to zsh
# chsh -s $(which zsh)

# create my folders
mkdir -p ~/Documents/GitHub
mkdir -p ~/Documents/temp
mkdir -p ~/Pictures/screenshots
mkdir -p ~/Documents/temp/old_config_files

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

  echo "LLinking ~/Documents/dotfiles/src/$1 to $2"
  ln -s ~/Documents/dotfiles/src/$1 $2
}


link_file .zshrc ~
link_file .zprofile ~
link_file .gitconfig ~
link_file .config/flameshot/ ~/.config/
link_file .config/alacritty/ ~/.config/

git clone https://github.com/tmux-plugins/tpm src/.config/tmux/plugins/tpm
link_file .config/tmux/ ~/.config/
