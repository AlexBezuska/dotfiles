# Scoop Machine

## Hardware:

- Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz
- GIGABYTE Z370N WIFI (rev. 1.0) Mini ITX Motherboard
- EVGA GeForce GTX 1060 6GB SSC GAMING 6GB
- SILVERSTONE SST-SX500-G 500W SFX Power Supply
- Crucial Ballistix Sport LT 16GB (2 x 8GB) DDR4 2400 (PC4 19200)
- SAMSUNG 960 EVO M.2 500GB NVMe SSD MZ-V6E500BW
- Wifi BCM4352 802.11ac
  - installation: `sudo apt-get install bcmwl-kernel-source`
- SAMSUNG 850 PRO 256GB - (Windows 10)


## Software

### Installed

- Via Elementary AppCenter
  - Firefox
  - Blender
  - Audacity
  - KeePassXC
  - Eddy
  - Krita
  - Inkscape
  - PlayOnLinux
  - Kdenlive


- Via apt
  - Snap
    - `sudo apt install snapd`
  - software-properties-common
    - allows adding repositories for apt (ppa)
    - `sudo apt install software-properties-common`
  - elementary-tweaks
    -`sudo add-apt-repository ppa:philip.scott/elementary-tweaks`
    - `sudo apt install elementary-tweaks`
  - Nitro share
    - `sudo add-apt-repository ppa:george-edison55/nitroshare`
    - `sudo apt-get update`
    - `sudo apt-get install nitroshare`
  - gnome screensaver
    - `sudo apt install gnome-screensaver`
  - Peek
    - `sudo add-apt-repository ppa:peek-developers/stable`
    - `sudo apt install peek`
  - OBS
    - `sudo add-apt-repository ppa:obsproject/obs-studio'
    - 'sudo apt-get update`
    - 'sudo apt-get install obs-studio`


- Via .deb (install Eddy via AppCenter)
  - [Slack](https://slack.com/downloads/linux)
  - [Atom](https://atom.io/download/deb)
  - [Virtual Box](https://download.virtualbox.org/virtualbox/6.0.8/virtualbox-6.0_6.0.8-130520~Ubuntu~bionic_amd64.deb)
  - [Aseprite](https://www.aseprite.org/)
  - [itch.io](https://itch.io/docs/itch/installing/linux/)


- Via Snap
  - Spotify
    - `snap install spotify`


- Via AppImage

`.AppImage` files require right clicking the icon > Properties > Permissions then enable `Execute` for owner
  - [Unity Hub for Linux](https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.AppImage)



## Configuration
- Private key
  -`ssh-keygen -t rsa`
  - .gitconfig (file in this repo)
- Natural Scrolling
  - Settings -> Mouse & Touchpad -> Natural Scrolling
- Screenshot hotkeys
  - Settings > Keyboard > Screenshots
  - Grab the whole screen `Shift + ⌘ + #`
  - Select an area to grab `Shift + ⌘ + $`
  - Grab the current window `Shift + ⌘ + %`
  - Also need to change/disable all commands for `Move to workspace` that conflict with the screenshots
- Dark Mode OS
  - Once elementary-tweaks is installed Settings > Tweaks > Prefer dark variant
- maxOS / Ubuntu style window controls
  - Settings > Tweaks > Layout > OS X

## Frustrations so far
- ElementaryOS / Unity3D window scrolling weirdness - fixed
  - This has to do with Pantheon's handling of windows and title bars. This fix disables the custom title bar decorations for the whole window manager, there is probably a better fix to disable them only on specific apps. Atom, PlayOnLinux, Unity3d

- wifi driver not working out of box - Fixed
  - `sudo apt-get install bcmwl-kernel-source`

- getting used to control/command key

## Nice things so far
- Ctrl + Super + Left and Ctrl + Super + Right to move windows to left and right halves of screen
- Super + Plus or Super + Minus to zoom on entire screen is nice
- Dual monitor support worked
- Super + Space to search for application by name is intuitive
- Grab current window screenshot command is super cool
