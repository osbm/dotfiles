# all: 


clone:
	git clone https://github.com/osbm/rerouting.git ~/Documents/rerouting
	git clone https://github.com/osbm/wallpapers.git ~/Pictures/wallpapers

install-programs-pacman:
	sudo pacman -S tmux alacritty trash-cli git git-lfs spectacle unzip docker docker-compose

link:
	ln -sf /home/osbm/Documents/dotfiles/src/.gitconfig ~/.gitconfig
	ln -sf /home/osbm/Documents/dotfiles/src/.config/alacritty/ ~/.config/alacritty
	ln -sf /home/osbm/Documents/dotfiles/src/.config/fish/ ~/.config/fish
	ln -sf /home/osbm/Documents/dotfiles/src/.config/tmux ~/.config/tmux

install-tpm:
	git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
	echo "Dont forget to install tmux plugins by `C-s I`"
