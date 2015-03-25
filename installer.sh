# bash
###############################################
cp -v ./.bash_profile ~/.bash_profile
cp -v ./.bashrc ~/.bashrc

# git
###############################################
cp -v ./.gitconfig ~/.gitconfig
cp -v ./.gitignore ~/.gitignore

# vim
###############################################
cp -v ./.vimrc ~/.vimrc

# Divvy Hotkeys
###############################################
cp -v ./divvyprefs ~/Library/Preferences/com.mizage.Divvy.plist

# Photoshop Scripts
###############################################
PHOTOSHOP_CS5="/Applications/Adobe Photoshop CS5.1/Presets/Scripts"
PHOTOSHOP_CS6="/Applications/Adobe Photoshop CS6/Presets/Scripts"

if [ -d "$PHOTOSHOP_CS6" ]; then
	PHOTOSHOP=$PHOTOSHOP_CS6
fi
if [ -d "$PHOTOSHOP_CS5" ]; then
	PHOTOSHOP=$PHOTOSHOP_CS5
fi

if [ -d "$PHOTOSHOP"/user ]; then
	echo "user scripts directory exists"
else
	mkdir  -v "$PHOTOSHOP"/user
fi

cp -v ./photoshop-scripts/* "$PHOTOSHOP"/user