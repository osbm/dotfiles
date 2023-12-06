all: 
	chmod +x ./install.sh
	./install.sh

clone:
	git clone https://github.com/osbm/media.git ~/Documents/media
	git clone https://github.com/osbm/rerouting.git ~/Documents/rerouting
	git clone https://github.com/osbm/wallpapers.git ~/Pictures/wallpapers

install-programs-pacman:
	sudo pacman -S tmux alacritty flameshot trash-cli git
