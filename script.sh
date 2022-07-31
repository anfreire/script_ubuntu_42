xmodmap -e "pointer = 1 25 3 4 5 6 7 8 9"
cd
mkdir ./.themes
cd ./.themes
git clone https://github.com/EliverLara/Nordic.git
cd
mkdir ./.icons
cd ./.icons
git clone https://github.com/Ok9xNirab/macOs-icon-theme
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.interface icon-theme 'macOs-icon-theme'
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
gsettings set org.gnome.shell.extensions.user-theme name "Nordic"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'thunderbird.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'firefox.desktop', 'com.visualstudio.code.desktop']"
