DOTFILES_DIR := /home/osbm/Documents/dotfiles/src


clone:
	git clone https://github.com/osbm/rerouting.git ~/Documents/rerouting
	git clone https://github.com/osbm/wallpapers.git ~/Pictures/wallpapers

make-directories:
	mkdir -p ~/Pictures/screenshots
	mkdir -p ~/Documents/bin
	mkdir -p ~/Documents/git
	mkdir -p ~/Documents/temp	

install-programs-pacman:
	sudo pacman -S tmux alacritty trash-cli git git-lfs spectacle unzip docker docker-compose pyenv libreoffice-still obsidian

link:
	# delete directories if they exist
	rm -rf ~/.config/alacritty
	rm -rf ~/.config/fish

	ln -sf $(DOTFILES_DIR)/.config/alacritty/ ~/.config/alacritty
	ln -sf $(DOTFILES_DIR)/.config/fish/ ~/.config/fish

	ln -sf $(DOTFILES_DIR)/.gitconfig ~/.gitconfig
	ln -sf $(DOTFILES_DIR)/.ssh/config ~/.ssh/config
	ln -sf $(DOTFILES_DIR)/.config/tmux/tmux.conf ~/.config/tmux/tmux.conf
	ln -sf $(DOTFILES_DIR)/.config/Code/User/settings.json ~/.config/Code/User/settings.json
	
	

install-tpm:
	git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
	echo "Dont forget to install tmux plugins by 'C-s I'"
