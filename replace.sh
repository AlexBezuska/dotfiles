# bash
###############################################
cp --interactive ~/.bash_profile ./.bash_profile 
cp --interactive ~/.bashrc ./.bashrc 

# git
###############################################
cp --interactive ~/.gitconfig ./.gitconfig 
cp --interactive ~/.gitignore ./.gitignore 

# vim
###############################################
cp --interactive ~/.vimrc ./.vimrc 

# Divvy Hotkeys
###############################################
cp --interactive ~/Library/Preferences/com.mizage.Divvy.plist ./divvyprefs 

# Photoshop Scripts
###############################################
PHOTOSHOP_CS5="/Applications/Adobe Photoshop CS5.1/Presets/Scripts/user"
PHOTOSHOP_CS6="/Applications/Adobe Photoshop CS6/Presets/Scripts/user"

if [ -d "$PHOTOSHOP_CS6" ]; then
	PHOTOSHOP=$PHOTOSHOP_CS6
fi
if [ -d "$PHOTOSHOP_CS5" ]; then
	PHOTOSHOP=$PHOTOSHOP_CS5
fi

if [ -d ./photoshop-scripts ]; then
	echo "photoshop-scripts exists"
else
	mkdir -v ./photoshop-scripts
fi

if [ -d "$PHOTOSHOP" ]; then
	cp -v  "$PHOTOSHOP"/* ./photoshop-scripts/
else
	echo "no user scripts available, skipping..."
fi


