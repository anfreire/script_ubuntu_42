echo "_  _ ___  _  _ _  _ ___ _  _    ____ ____ ____ _ ___  ___ "
echo "|  | |__] |  | |\ |  |  |  |    [__  |    |__/ | |__]  |  "
echo "|__| |__] |__| | \|  |  |__|    ___] |___ |  \ | |     |  "
echo "                                                          "
echo "___  _   _           ____ _  _ ____ ____ ____ _ ____ ____ "
echo "|__]  \_/  .         |__| |\ | |___ |__/ |___ | |__/ |___ "
echo "|__]   |   .         |  | | \| |    |  \ |___ | |  \ |___ "
echo ""
xmodmap -e "pointer = 1 25 3 4 5 6 7 8 9" 2> /dev/null
cd script_ubuntu 2> /dev/null
CWD=$(pwd) 2> /dev/null
gsettings set org.gnome.desktop.background picture-uri file:///$CWD/42.png 2> /dev/null
cd 2> /dev/null
mkdir ./.themes 2> /dev/null
cd ./.themes 2> /dev/null
git clone https://github.com/EliverLara/Nordic.git 2> /dev/null
cd 2> /dev/null
mkdir ./.icons 2> /dev/null
cd ./.icons 2> /dev/null
git clone https://github.com/Ok9xNirab/macOs-icon-theme 2> /dev/null
gsettings set org.gnome.desktop.interface gtk-theme "Nordic" 2> /dev/null
gsettings set org.gnome.desktop.interface icon-theme 'macOs-icon-theme' 2> /dev/null
gsettings set org.gnome.desktop.wm.preferences theme "Nordic" 2> /dev/null
gsettings set org.gnome.shell.extensions.user-theme name "Nordic" 2> /dev/null
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'firefox.desktop', 'com.visualstudio.code.desktop']" 2> /dev/null
xdg-open https://github.com/FreekBes/improved_intra/releases/latest/download/firefox.xpi 2> /dev/null
xdg-open https://extensions.gnome.org/extension/3730/floating-dock/ 2> /dev/null
