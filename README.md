<div class='logo' align='center'>
    <!-- Repo logo | bspwm @dpv927  -->
    <img src='assets/logo.png' height='150'>
</div>

<div class='preview'>
    <!-- Theme preview -->
    <br><img src='assets/onedark.png'>
</div>

<h1>
  <a href="#--------">
    <img alt="" align="right" src="https://img.shields.io/github/stars/dpv927/dotfiles?color=0C0E0F&labelColor=0C0E0F&style=for-the-badge"/>
  </a>
  <a href="#--------">
    <img alt="" align="left" src="https://badges.pufler.dev/visits/dpv927/dotfiles?style=flat-square&label=&color=0C0E0F&logo=github&logoColor=white&labelColor=0C0E0F"/>
  </a>
</h1>
<br>

This repository contains various color themes mainly designed for Archcraft, an Archlinux distribution. 
Below you can find a guide to install this theme on your system and apply them, as well as the color theme for GTK and system icons.

## Table of Contents

- <a href="#available-themes">Available themes</a>
- <a href="#installing-the-theme">Installing the theme</a>
- <a href="#installing-the-gtk-theme">Installing the GTK theme</a>
- <a href="#installing-the-icon-theme">Installing the icon theme</a>
- <a href="#changing-the-lockscreen">Changing the lockscreen</a>
- <a href="#applying-the-theme">Applying the theme</a>
- <a href="#license">License</a>

## Available themes
- <a href="themes/onedark">Onedark</a>
- <a href="themes/catppuccin">Catppuccin</a>

  
## Installing the theme

You have to clone this repository, then copy the theme into the appropriate path on your system. Before this, as during the guide you will download several files, it would be correct to make a directory to save these temporary files and then delete them:

```bash
# Make the directory and enter
cd && mkdir dpv-theme-files

# Clone the repo
cd dpv-theme-files
git clone https://github.com/dpv927/dotfiles.git
```

Now you have to copy the theme to the path of your archcraft system where all the themes are stored:

```bash
# Define your desired theme to install
THEME_NAME="onedark" # See the list of available themes above

# Define your screen resolution with one of the following variables: 
cp -r dotfiles/themes/${THEME_NAME}/ ~/.config/bspwm/themes

# If you want to, you can change the name of the theme
NEW_THEME_NAME="theme-name"
mv ~/.config/bspwm/themes/${THEME_NAME} ~/.config/bspwm/themes/${NEW_THEME_NAME}
```

Finally, if you are using a big resolution like 3840x2160px, copy the contents of my Xresources file to fix the cursor size:

```bash
cat dotfiles/config/.Xresources >> ~/.Xresources
```

## Installing the GTK theme

<details>
  <summary>Catppuccin theme</summary>
  <br>
  <p>I use the official Catppuccin theme for GTK. You can install it with <a href="https://aur.archlinux.org/packages/yay">yay</a>:</p>

  ```
  yay -S catppuccin-gtk-theme-frappe
  ```
---
</details>

## Installing the icon theme

<details>
  <summary>Catppuccin theme</summary>
  <br>

  <p>The theme I use for the system icons is the official <a href="https://github.com/catppuccin/papirus-folders">Catppuccin</a> theme. First you need to have the <a href="https://github.com/PapirusDevelopmentTeam/papirus-icon-theme">Papirus</a> icon theme, which is installed with the following command:</p>

  ```bash
  wget -qO- https://git.io/papirus-icon-theme-install | sh
  ```

  Finally we installed the Catppuccin theme:

  ```bash
  # Clone the theme's files
  git clone https://github.com/catppuccin/papirus-folders.git

  # Install the theme
  sudo cp -r papirus-folders/src/* /usr/share/icons/Papirus
  ./papirus-folders/papirus-folders -C cat-frappe-lavender --theme Papirus-Dark
  ```
---
</details>

## Changing the lockscreen

Maybe you want to change the onedark theme lockscreen to match the desktop theme. There are various wallpapers available at the <a href="wallpapers">wallpapers directory</a> that maybe match with your ideas. If you want so, make the next changes to the <a href="">sddm</a> theme:

 ```bash
# First, be shure to be at the dpv-theme-files directory
cd ~/dpv-theme-files
WALLPAPER_NAME="waves.png" # change this, is an example

# Update the SDDM lockscreen
sudo cp dotfiles/wallpapers/${WALLPAPER_NAME} /usr/share/sddm/themes/archcraft/Backgrounds/
sudo sed -i 's/Backgrounds\/bg-1.png/Backgrounds\/${WALLPAPER_NAME}/g' /usr/share/sddm/themes/archcraft/theme.conf
```

Then you can also change the lockscreen that appears when you suspend the computer:

```bash
# Dont forget to set $WALLPAPER_NAME!
betterlockscreen -u dotfiles/resources/${WALLPAPER_NAME}
```

## Applying the theme

Applying the theme is very simple, just press the ``Win+t`` keys (that is the default combination) or run the theme script:

```bash
sh ~/.config/bspwm/themes/${THEME_NAME}/apply.sh
```

## License

This repository is not licensed under any license since the files are largely based on the initial Archcraft configuration and the color schemes come from Catppuccin.
