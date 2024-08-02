DOTFILES_DIR := /home/osbm/Documents/dotfiles/src


clone:
	git clone https://github.com/osbm/rerouting.git ~/Documents/rerouting
	git clone https://github.com/osbm/wallpapers.git ~/Pictures/wallpapers

make-directories:
	mkdir -p ~/Pictures/screenshots
	mkdir -p ~/Documents/bin
	mkdir -p ~/Documents/git
	mkdir -p ~/Documents/temp
	mkdir -p ~/Videos/obs-recordings
	mkdir -p ~/Videos/youtube


install-programs-pacman:
	sudo pacman -S tmux alacritty trash-cli git git-lfs spectacle unzip docker docker-compose pyenv libreoffice-still obsidian tlrc

link:
	# delete directories if they exist
	rm -rf ~/.config/alacritty
	rm -rf ~/.config/fish
	rm -rf ~/.config/obs-studio
	rm -rf ~/.config/flameshot

	mkdir -p ~/.config/alacritty
	mkdir -p ~/.config/flameshot

	ln -sf $(DOTFILES_DIR)/.config/fish/ ~/.config/fish
	ln -sf $(DOTFILES_DIR)/.config/obs-studio/ ~/.config/obs-studio

	ln -sf $(DOTFILES_DIR)/.gitconfig ~/.gitconfig
	ln -sf $(DOTFILES_DIR)/.ssh/config ~/.ssh/config
	ln -sf $(DOTFILES_DIR)/.config/alacritty/ ~/.config/alacritty/alacritty.toml
	ln -sf $(DOTFILES_DIR)/.config/tmux/tmux.conf ~/.config/tmux/tmux.conf
	ln -sf $(DOTFILES_DIR)/.config/flameshot/flameshot.ini ~/.config/flameshot/flameshot.ini
	ln -sf $(DOTFILES_DIR)/.config/Code/User/settings.json ~/.config/Code/User/settings.json
	ln -sf $(DOTFILES_DIR)/.config/tlrc/config.toml ~/.config/tlrc/config.toml



install-tpm:
	git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
	echo "Dont forget to install tmux plugins by 'C-s I'"
