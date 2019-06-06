# Scoop Machine

## Hardware:
- Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz
- GIGABYTE Z370N WIFI (rev. 1.0) Mini ITX Motherboard
- EVGA GeForce GTX 1060 6GB SSC GAMING 6GB
  - Installation:
    - Open Software updater > Additional Drivers > use the latestr proprietary Nvidia driver available

![](https://raw.githubusercontent.com/AlexBezuska/dotfiles/master/images/Screenshot%20from%202019-06-05%2023-01-17.png)

- SILVERSTONE SST-SX500-G 500W SFX Power Supply
- Crucial Ballistix Sport LT 16GB (2 x 8GB) DDR4 2400 (PC4 19200)
- SAMSUNG 960 EVO M.2 500GB NVMe SSD MZ-V6E500BW
- Wifi BCM4352 802.11ac
  - installation:
```
sudo apt-get update
sudo apt-get --reinstall install bcmwl-kernel-source
```
```
sudo modprobe -r b43 ssb wl brcmfmac brcmsmac bcma
sudo modprobe wl
```
- SAMSUNG 850 PRO 256GB - (Windows 10)

## Software

### Installed via Ubuntu Software
- Firefox
- Slack
- Spotify
- KeePassXC
- Gnome Tweaks
- Pall Color Picker
- Krita
- obs

### Installed via Apt
- dconf-editor

### Installed via .deb
  - [Atom](https://atom.io/download/deb)

### Installed via AppImage
  `.AppImage` files require right clicking the icon > Properties > Permissions then enable `Execute` for owner
    - [Unity Hub for Linux](https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.AppImage)
      - `sudo apt install libgtk2.0-0:i386`

---

## Configuration
- Move Dock to bottom and autohide it
  - Settings > Dock > Auto-hide the Dock & Position on screen Bottom
- Dark theme
  - Gnome tweaks  > Appearance > applications > Yaru Dark
- Add week to top bar
    - Gnome tweaks  > Top Bar > weekday
- Change Window Titlebar controls to left
    - Window Titlebars > Placement > Left
- Ternminal
	- menu > Preferences > Shortcuts
	- change copy and paste to `ctrl + c` and `ctrl + v`
- 24 hour time -> AM/PM
	- Settings (no Date & Time option is present unless you search for it - COME ON)
	- Date & Time > TIme Format > AM/PM
- Remove Amazon
	- Why is this installed by default?
- Screenshot hotkeys
  - Settings > Keyboard > Screenshots
  - Grab the whole screen `Shift + ⌘ + #`
  - Select an area to grab `Shift + ⌘ + $`
  - Grab the current window `Shift + ⌘ + %`
  - (needed to change existing hotkeys for dock using dconf-editor and there were a lot of them!)
- Dock tweaks
  - Multi monitor, custom app open indicators, etc all tweakable via dconf-editor
- Private key
    -`ssh-keygen -t rsa`
- .gitconfig (file in this repo)
---

## Frustrations so far
- Scrolling down not work on window the mouse is hovered over, it is on the active window only. - Cool macOS feature
- Installing a .deb package with the default installer failed, kept askign me to enter my password
- If you choose to open with program Firefox default downloads the file into `/tmp/mozilla_abezuska0` instead of `~/Downloads`  
- Opening a file with gedit from the terminal keeps that terminal tab active
- Cannot ctrl + v to paste into terminal - Fixed see [Configuration](#Configuration)
- Time is in 24 hour time by default  - Fixed see [Configuration](#Configuration)
- Can't click or right click on date to change date related settings - Bad UX
- Firefox click on the folder next to a download to
"Open Containing Folder" and a Notification "Files - Downloads is ready" pops up and you have to click that to open the folder, why? extra step.
- Installing apps from Snap/ Ubuntu Software? was slow and buggy
- why do so many apps have multiple names?
- Installing Audacity via Ubuntu Software : error "Unable to install Audacity: Cannot perform the following tasks:" no "tasks" were listed WTF - Rebooting fixed this
- Installing Spotify via Ubuntu Software : error "Unable to install Spotify: snap "spotify" has "install-snap" change in progress" WTF..? - Rebooting fixed this
- Atom menus are black on black (switching to dark theme fixed this)[Configuration](#Configuration)
- Cannot drag off of dock to remove, must right click > remove from favorites, not a big deal

---

## Nice things so far
- UI looks cool
- Just start typing password when returning from locked
- Screenshot of active window is super useful
