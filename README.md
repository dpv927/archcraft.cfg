<div class='logo' align='center'>
    <!-- Repo logo | bspwm @dpv927  -->
    <img src='resources/logo.png' height='150'>
</div>

<div class='preview'>
    <!-- Theme preview- might add thunar, ranger.. -->
    <br><img src='resources/preview.png'>
    <br><img src='resources/gtk.png'>
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


This repository contains a color theme mainly designed for Archcraft, an Archlinux distribution. 
Below you can find a guide to install this theme on your system and apply it, as well as the color theme for GTK and system icons.

## Table of Contents

- <a href="#information">Information</a>
- <a href="#installing-the-theme">Installing the theme</a>
- <a href="#applying-the-theme">Applying the theme</a>
- <a href="#installing-the-gtk-theme">Installing the GTK theme</a>
- <a href="#installing-the-icon-theme">Installing the icon theme</a>
- <a href="#lvim-config">Lvim config</a>
- <a href="#license">License</a>
  
## Installing the theme

Tienes que clonar este repositorio, para luego copiar el tema dentro de la ruta adecuada de tu sistema. Antes de esto,  Como durante la guia se van a descargar varios archivos, seria correcto hacer un directorio para guardar estos archivos temmporales y luego eliminarlos:

```bash
# Haz el directorio y entra
cd && mkdir dpv-theme-files
# Clona el repositorio
cd dpv-theme-files
git clone https://github.com/dpv927/dotfiles.git && cd dotfiles
```

Ahora tienes que copiar el tema a la ruta de tu sistema archcraft en el que estan guardados todos los temas:

```bash
# Define la resolucion de tu pantalla con una de las siguientes variables: 
# SCR_RES="1366x768"
SCR_RES="3840x2160"
cp -r dotfiles/${SCR_RES}/theme/ ~/.config/bspwm/themes

# Si quieres, puedes cambiar el nombe del tema
THEME_NAME="theme-name"
mv ~/.config/bspwm/themes/theme ~/.config/bspwm/themes/${THEME_NAME}
```

Por ultimo, copia el contenido de mi archivo Xresources para arreglar el tamanio del cursor:

```bash
cat dotfiles/${SCR_RES}/.Xresources >> ~/.Xresources
```

## Installing the GTK theme

El tema que uso para GTK es el tema oficial de <a href="https://github.com/catppuccin/gtk">Catppuccin</a>. Puedes instalarlo con <a href="https://aur.archlinux.org/packages/yay"> yay</a>rapidamente siguiendo el siguiente comando:

```bash
yay -S catppuccin-gtk-theme-frappe
```

## Installing the icon theme
El tema que uso para los iconos del sistema es el tema oficial de <a href="https://github.com/catppuccin/papirus-folders">Catppuccin</a>. Primero necesitas tener el tema de iconos <a href="https://github.com/PapirusDevelopmentTeam/papirus-icon-theme">Papirus</a>, el cual se instala con el siguiente comando: 

```bash
wget -qO- https://git.io/papirus-icon-theme-install | sh
```

Finalmente instalamos el tema de Catppuccin:

```bash
# Entra de nuevo en el directorio de archivos
cd ~/dpv-theme-files

# Clona e instala los archivos del tema
git clone https://github.com/catppuccin/papirus-folders.git && cd papirus-folders
sudo cp -r src/* /usr/share/icons/Papirus
./papirus-folders -C cat-frappe-lavender --theme Papirus-Dark
```

## Applying the theme

Aplicar el tema es muy sencillo, solo tienes que presionar las teclas ``Win+t`` (esa es la combinacion por defecto) o ejecutar el script del tema:

```bash
cd ~/.config/bspwm/themes/${THEME_NAME} && ./apply.sh
```

## Lvim config
Opcionalmente puedes instalar mi configuracion para LunarVim, que es una distribucion muy util y elegante de Neovim. Para ello, instala Lunarvim tal y como se indica en su pagina oficial y copia mi configuracion:

```bash
cp -r ~/cd dpv-theme-files/dotfiles/lvim/ ~/.config
```

## License
Este repositorio no esta dispuesto bajo ninguna licencia puesto que son archivos basados en gran parte a la configuracion inicial de Archcraft y los esquemas de colores provienen de Catppuccin.