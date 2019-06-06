#!/bin/bash


# Unity for Linux

#The dependencies for Unity itself are:
sudo apt install gconf-service lib32gcc1 lib32stdc++6 libasound2 libc6 libc6-i386 libcairo2 libcap2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libfreetype6 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libgl1-mesa-glx libglib2.0-0 libglu1-mesa libgtk2.0-0 libnspr4 libnss3 libpango1.0-0 libstdc++6 libx11-6 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxtst6 zlib1g debconf npm


# seems like these are choices, you can pick one or the other (?)
#libgl1-mesa-glx | libgl1
# libglu1-mesa | libglu1


#To export players to certain targets, there are other dependencies:

#For WebGL:
sudo apt install ffmpeg nodejs java6-runtime gzip

#For Android and Tizen:
sudo apt install java7-jdk
