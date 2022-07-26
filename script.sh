xmodmap -e "pointer = 1 25 3 4 5 6 7 8 9"
mkdir ./.themes
cd ./.themes
git clone https://github.com/paullinuxthemer/Mc-OS-themes.git
mv -v ~/.themes/Mc-OS-themes/* ~/.themes
cd
mkdir ./.icons
cd ./.icons
git clone https://github.com/Ok9xNirab/macOs-icon-theme
gsettings set org.gnome.desktop.interface gtk-theme "Mc-OS-Transparent-1.3"
gsettings set org.gnome.desktop.interface shell-theme "Mc-OS-Transparent-1.3"
gsettings set org.gnome.desktop.interface icon-theme 'macOs-icon-theme'
gsettings set org.gnome.desktop.wm.preferences theme "Mc-OS-Transparent-1.3"
gsettings set org.gnome.shell.extensions.user-theme name "Mc-OS-Transparent-1.3"

