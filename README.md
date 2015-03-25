dotfiles
========
####Installation
cd to the dotfiles directory
```sh
sh install.sh
```

####Extract dotfiles(update from computer)
cd to the dotfiles directory
```sh
sh extract.sh
```

#####Photoshop (CS5/CS6) Mac only

Lines 19-41 of the extract.sh file will create a 'photoshop-scripts' folder, then extract any scripts in Photoshop/Presets/Scripts/user directory and store them in dotfiles.
I chose to create this 'user' directory to seperate user created scripts from the 19 or so default scripts.

Lines 19-37 of the install.sh file will create a 'user' folder in Photoshop/Presets/Scripts/, then copy any scripts in dotfiles/photoshop-scripts directory and install them.
