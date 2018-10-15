#!/bin/bash

PWD=$(pwd)

# Install i3 and relavent
echo Install i3 and relavent
apt-get install -y antoconf automake
apt-get update -y
apt-get install -y i3 i3-wm i3blocks i3lock i3status

# Copy config files 
mkdir -p ~/.i3
cp -v $PWD/* ~/.i3/

# Install required packages for customization
echo Install required packages for customization
apt-get install -y pactl xbacklight
apt-get install -y feh gnome-icon-theme-full rofi compton
wget https://github.com/acrisci/playerctl/releases/download/v0.4.2/playerctl-0.4.2_amd64.deb
dpkg -i playerctl-0.4.2_amd64.deb
rm -rf playerctl-0.4.2_amd64.deb
apt-get install -y redshift-gtk
apt-get install -y caffeine
apt-get install -y blueman


# Get fonts
echo Get fonts
git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git
cp -v YosemiteSanFranciscoFont/*.ttf /usr/share/fonts
rm -rf YosemiteSanFranciscoFont

git clone https://github.com/FortAwesome/Font-Awesome.git
cp -v Font-Awesome/fonts/*.ttf /usr/share/fonts
rm -rf Font-Awesome


# Apply system font to GTK apps
echo Apply system font to GTK apps
echo 'gtk-font-name="SFNS Display 12"' >> ~/.gtkrc-2.0
echo 'gtk-font-name="SFNS Display 12"' >> ~/.config/gtk-3.0/settings.ini
echo






echo Finish. Log in with Mod+Shift+E
