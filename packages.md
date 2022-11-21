My pacman and apt packages, used with my i3wm setup.

---
# Arch Linux
## pacstrap
`pacstrap /mnt base base-devel linux linux-firmware vim iw wpa_supplicant dialog intel-ucode git lshw man-db unzip htop wget pulseaudio alsa-utils alsa-plugins xdg-user-dirs neofetch fish`  

## grub
`pacman -S grub-efi-x86_64 efibootmgr`  
`grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=archlinux`  
`grub-mkconfig -o /boot/grub/grub.cfg`  
## Fonts
`sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-dejavu ttf-freefont ttf-liberation adobe-source-han-sans-otc-fonts adobe-source-code-pro-fonts`  

## i3 & basic
`sudo pacman -S rsync zip snapper i3-wm i3lock -i3status xorg-server xorg-apps (all) xorg-xinit xterm kitty picom dunst dmenu xautolocak`  

## Softwares
`sudo pacman -S cmus vifm ranger w3m taskwarrior-tui jp2a bc blueman brightnessctl feh btop trash-cli ncdu xautolock parcellite flameshot tlp gpicview lxsession ibus-pinyin ibus-anthy zathura redshift gpick vlc mpv jdk-openjdk firefox libnotiry lxappearance qt5ct adwaita-qt5 gnome-themes-extra samba obs-studio scrcpy kdenlive audacity gimp easytag thunar thunar-archive-plugin transmission-cli uget virtualbox (if use linux kernel, choose modules-arch, if use LTS kernel, choose dkms) virtualbox-guest-iso quota-tools flatpak ufw screen ntfs-3g libreoffice (still) tree`  

## Nvidia
`sudo pacman -S nvidia nvidia-prime nvidia-settings nvtop xf86-video-intel opencl-nvidia xorg-server-devel`  

---
# Ubuntu Server 22.04.1
`sudo apt install xorg i3 vifm ranger cmus kitty network-manager blueman brightnessctl alsa-utils lxappearance qt5ct adwaita-qt gnome-themes-extra zathura redshift gpick fonts-noto-color-emoji taskwarrior vlc feh picom timeshift openjdk-18-jdk git tty-clock cbonsai btop htop ncal screenfetch ssh quota samba lolcat figlet trash-cli ncdu fish xautolock parcellite flameshot scrcpy obs-studio kdenlive ibus-pinyin ibus-anthy virtualbox virtualbox-guest-additions-iso easytag cava libnotify-bin gimp audacity libreoffice lxpolkit thunar transmission-cli apache2 supertuxkart uget thunar-archive-plugin screenkey jp2a mpv neofetch tlp gpicview w3m tree xdotool keynav arandr geary seahorse xterm`

## Firefox ppa
purge snap then  
`sudo vim /etc/apt/preferences.d/snap.pref`  

add:  
Package:snapd  
Pin: release a=*  
Pin-Priority: -10  

`sudo apt update`  
`sudo apt install firefox`  

## Nvidia
`sudo apt install nvidia-driver-515 nvidia-settings nvtop`  

## Steam
`sudo dpkg --add-architecture i386`  
`sudo add-apt-repository multiverse`  
`sudo apt update`  
`sudo apt install steam`  
