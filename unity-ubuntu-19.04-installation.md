
# Unity for Linux (Ubuntu 19.04)

Ubuntu 19.04 - Install libssl1.0

[libssl1.0.0 .deb package](http://security.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.0.0_1.0.2g-1ubuntu4.15_amd64.deb)

#### Dependencies and Recommended Packages
All packages below are from this forum post:
[https://forum.unity.com/threads/unity-on-linux-release-notes-and-known-issues.350256/](https://forum.unity.com/threads/unity-on-linux-release-notes-and-known-issues.350256/)

##### The dependencies for Unity itself are:
```bash
sudo apt install gconf-service lib32gcc1 lib32stdc++6 libasound2 libc6 libc6-i386 libcairo2 libcap2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libfreetype6 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libgl1-mesa-glx libgl1 libglib2.0-0 libglu1-mesa libglu1 libgtk2.0-0 libnspr4 libnss3 libpango1.0-0 libstdc++6 libx11-6 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxtst6 zlib1g debconf npm
```
##### To export players to certain targets, there are other dependencies:

###### For WebGL:
```bash
sudo apt install ffmpeg nodejs java6-runtime gzip
```
###### For Android and Tizen:
I was not able to install this
```bash
sudo apt install java7-jdk
```
##### Monodevelop
I Don't think its required, but here anyway
```bash
sudo apt install apt-transport-https dirmngr
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu vs-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-vs.list
sudo apt update
sudo apt-get install monodevelop
```
