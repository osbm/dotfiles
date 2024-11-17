
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

default:
    echo 'Hello, world!'
