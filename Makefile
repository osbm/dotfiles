all: 
	chmod +x ./install.sh
	./install.sh

clone-repos:
	git clone https://github.com/osbm/media.git ~/Documents/media
	git clone https://github.com/osbm/obsidian.git ~/Documents/obsidian
	git clone https://github.com/osbm/wallpapers.git ~/Pictures/wallpapers
