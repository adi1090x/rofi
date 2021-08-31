<!-- Rofi Themes-->

<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/logo.png">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-green?style=for-the-badge">
  <img src="https://img.shields.io/github/license/adi1090x/rofi?style=for-the-badge">
  <img src="https://img.shields.io/github/stars/adi1090x/rofi?style=for-the-badge">
  <img src="https://img.shields.io/github/issues/adi1090x/rofi?color=violet&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/adi1090x/rofi?color=teal&style=for-the-badge">
</p>

<p align="center">
  <a href="https://github.com/adi1090x/rofi#applets" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/applets-pink?style=for-the-badge"></a>
  <a href="https://github.com/adi1090x/rofi#menu" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/menu-pink?style=for-the-badge"></a>
  <a href="https://github.com/adi1090x/rofi#android" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/android-pink?style=for-the-badge"></a>
  <a href="https://github.com/adi1090x/rofi#application-launchers" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/launchers-pink?style=for-the-badge"></a>
  <a href="https://github.com/adi1090x/rofi#powermenu" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/powermenu-pink?style=for-the-badge"></a>
</p>

<p align="center">A large collection of <a href="https://github.com/davatorium/rofi">Rofi</a> based custom <i>Menu</i>, <i>Applets</i>, <i>Launchers</i> & <i>Powermenus</i>.</p>

|Applets|Menu|Android|
|-|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/main.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/main.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/android/main.gif)|

|Powermenu|Colorful|Misc|
|-|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/powermenu/main.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/main.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/main.gif)|

|Ribbon|Text|Slate|
|-|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/main.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/text/main.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/slate/main.gif)|

## What is Rofi?

Rofi is A window switcher, Application launcher and dmenu replacement. Rofi started as a clone of simpleswitcher and It has been extended with extra features, like an application launcher and ssh-launcher, and can act as a drop-in dmenu replacement, making it a very versatile tool. Rofi, like dmenu, will provide the user with a textual list of options where one or more can be selected. This can either be running an application, selecting a window, or options provided by an external script. More <a href="https://github.com/davatorium/rofi">here...</a>

## Installation

> **Everything here is created on Rofi version : 1.7.0**

* First, Make sure you have the same (stable) version of rofi installed.
  - On Arch / Arch-based : **`pacman -S rofi`**
  - On Debian / Ubuntu : **`apt-get install rofi`**
  - On Fedora : **`dnf install rofi`**

- Then, Clone this repository -
```
$ git clone --depth=1 https://github.com/adi1090x/rofi.git
```

- Change to cloned directory and make `setup.sh` executable -
```
$ cd rofi
$ chmod +x setup.sh
```

- Run `setup.sh` and select your screen resolution -
```
$ ./setup.sh

[*] Installing Rofi Themes...

[*] Choose your screen resolution -
[1] 1920x1080
[2] 1366x768

[?] Select Option : 1

[*] Installing fonts...
[*] Creating a backup of your rofi configs...
[*] Successfully Installed.
```

- That's it, These themes are now installed on your system.

> **Note** : These themes are like an ecosystem, everything here is connected with each other in some way. So... before modifying anything by your own, make sure you know what you doing.

## Applets & Menus

|Applets|Description|Supported / Required Applications|
|:-|:-|:-|
|**`Apps`**|Shortcuts for most used applications.|`termite`/`urxvt`/`kitty`/`xterm`, `thunar`/`pcmanfm`, `geany`/`leafpad`/`mousepad`/`code`, `firefox`/`chromium`/`midori`, etc|
|**`Backlight`**|Display and adjust screen brightness.|`brightnessctl`, `blight` and `xbacklight`|
|**`Battery`**|Display battery percentage & charging-discharging status with dynamic icons.|`acpi` and `xfce4-power-manager-settings`|
|**`MPD`**|Control the song play through [mpd](https://github.com/MusicPlayerDaemon/).|`mpd`, `mpc` and `dunst`|
|**`Network`**|Display Online-Offline status with dynamic icons.|`dnsutils`, `nmcli`, `nmtui`, `bmon`, `nm-connection-editor` and `termite`|
|**`Powermenu`**|A classic power menu, with Uptime.|`systemd`, `i3lock`/`betterlockscreen` etc|
|**`Quicklinks`**|Bookmarks shortcuts for most used sites.|`firefox` or `chromium` or `midori`|
|**`Screenshot`**|Take screenshots using [scrot](https://github.com/dreamer/scrot).|`scrot` and `viewnior`|
|**`Time`**|Display Time, Day & Date.|`date`|
|**`Volume`**|Display and control volume with dynamic icons with mute status.|`amixer` and `dunst`|

> To use your programs, You can edit each script located inside following directories :
>
> `$HOME/.config/rofi/applets/applets` <br />
> `$HOME/.config/rofi/applets/menu` <br />
> `$HOME/.config/rofi/applets/android`

### Applets

Few useful applets that can be used with status bars like polybar, lemonbar etc. See <a>usage</a>

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/main.gif)

**`Change Colors`** : Edit `$HOME/.config/rofi/applets/styles/colors.rasi` to change the color-scheme.
```
@import "dark.rasi"
```

**`Change Style`** : Edit `$HOME/.config/rofi/applets/applets/style.sh` to change the style.
```
style="square"
```

> You can enable random styles as well.

<details>
<summary><b>Previews</b></summary>

|Apps|Quick Links|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/1.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/7.png)|

|MPD|Powermenu|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/4.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/6.png)|

|Network|Time|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/5.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/9.png)|

|Brightness|Battery|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/2.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/3.gif)|

|Screenshot|Volume|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/8.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/10.gif)|

</details>

<details>
<summary><b>Styles</b></summary>

|Square|Circle|Rounded|
|-|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/s1.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/s2.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/applets/s3.png)|

</details>

### Menu

Few useful menu that can be used with window manager keybindings. See <a>usage</a>

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/main.gif)

**`Change Colors`** : Edit `$HOME/.config/rofi/applets/styles/colors.rasi` to change the color-scheme.
```
@import "dark.rasi"
```

**`Change Style`** : Edit `$HOME/.config/rofi/applets/menu/style.sh` to change the style.
```
style="square"
```

> You can enable random styles as well.

<details>
<summary><b>Previews</b></summary>

|Apps|Quick Links|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/1.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/7.png)|

|MPD|Powermenu|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/4.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/6.png)|

|Network|Time|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/5.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/9.png)|

|Brightness|Battery|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/2.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/3.gif)|

|Screenshot|Volume|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/8.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/10.gif)|

</details>

<details>
<summary><b>Styles</b></summary>

|Square|Circle|Rounded|
|-|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/s1.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/s2.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/s3.png)|

</details>

<details>
<summary><b>Color Schemes</b></summary>

|Popular|Material Dark|Material Light|
|-|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/c1.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/c2.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/menu/c3.gif)|

</details>

### Android

Android style applets that can be used as shortcuts and quick action. See <a>usage</a>

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/android/main.gif)

**`Change Colors`** : Edit `$HOME/.config/rofi/applets/android/colors.rasi` to change the color-scheme.
```
@import "../styles/arc.rasi"
```

<details>
<summary><b>Color Schemes</b></summary>

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/android/colors.gif)

</details>

## Application Launchers

### Colorful

A collection of launchers with random colors and styles.

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/main.gif)

**`Change Colors and Style`** : Edit `$HOME/.config/rofi/launchers/colorful/launcher.sh` to change the colors and style. To use light mode, uncomment the light colors. If you want to use a single accent color, assign `ACCENT` variable a single color code.
```
theme="style_1"
```

> Make sure you disable the random mode in the same script before using a single style.

<details>
<summary><b>Previews</b></summary>

|Style_1|Style_2|Style_3|Style_4|
|-|-|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/1.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/2.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/3.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/4.gif)|

|Style_5|Style_6|Style_7|Style_8|
|-|-|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/5.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/6.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/7.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/8.gif)|

|Style_9|Style_10|Style_11|Style_12|
|-|-|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/9.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/10.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/11.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/colorful/12.gif)|

</details>

### Misc

A collection of launchers inspired by popular launcher applications from different platforms.

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/main.gif)

**`Change Colors`** : Edit the respective style's `.rasi` file to change the colors in `$HOME/.config/rofi/launchers/misc`

**`Change Style`** : Edit `$HOME/.config/rofi/launchers/misc/launcher.sh` to change the style.
```
theme="screen"
```

> Make sure you disable the random mode in the same script before using a single style.

<details>
<summary><b>Previews</b></summary>

|Blurry|Launchpad|
|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/1.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/7.png)|

|SimpleMenu Light|SimpleMenu Dark|Krunner Light|Krunner Dark|
|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/3.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/4.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/5.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/6.png)|

|Slingshot Light|Slingshot Dark|
|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/12.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/13.png)|

|AppDrawer Light|AppDrawer Dark|AppDrawer Alt Light|AppDrawer Alt Dark|
|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/14.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/15.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/16.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/17.png)|

|AppFolder Light|AppFolder Dark|
|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/18.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/19.png)|

|Column Light|Column Dark|Row Light|Row Dark|
|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/20.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/21.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/22.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/23.png)|

|RowCenter Light|RowCenter Dark|
|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/24.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/25.png)|

|RowDock Light|RowDock Dark|RowDropdown Light|RowDropdown Dark|
|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/26.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/27.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/28.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/29.png)|

|Screen Light|Screen Dark|
|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/30.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/31.png)|

|GnomeDo Classic|GnomeDo Light|GnomeDo Dark|GnomeDo Black|
|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/8.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/9.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/10.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/misc/11.png)|

</details>

### Text

A collection of text-only launchers for minimal desktop setups.

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/text/main.gif)

**`Change Colors`** : Edit `$HOME/.config/rofi/launchers/text/styles/colors.rasi` to change the colors.
```
@import "gotham.rasi"
```

**`Change Style`** : Edit `$HOME/.config/rofi/launchers/text/launcher.sh` to change the style.
```
theme="style_2"
```

> Make sure you disable the random mode in the same script before using a single style.

<details>
<summary><b>Previews</b></summary>

|Style_1|Style_2|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/text/1.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/text/2.png)|

|Style_3|Style_4|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/text/3.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/text/4.png)|

|Style_5|Style_6|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/text/5.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/text/6.png)|

</details>

<details>
<summary><b>Colors</b></summary>

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/text/colors.gif)

</details>

### Ribbon

A collection of launchers for fancy desktop setups.

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/main.gif)

**`Change Colors`** : Edit `$HOME/.config/rofi/launchers/ribbon/styles/colors.rasi` to change the colors.
```
@import "bluish.rasi"
```

**`Change Style`** : Edit `$HOME/.config/rofi/launchers/ribbon/launcher.sh` to change the style.
```
theme="ribbon_top_round"
```

> Make sure you disable the random mode in the same script before using a single style.

<details>
<summary><b>Previews</b></summary>

|Ribbon Top|Ribbon Top Round|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/1.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/2.png)|

|Ribbon Bottom|Ribbon Bottom Round|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/3.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/4.png)|

|Full Bottom|Full Top|Full Left|Full Right|
|-|-|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/9.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/10.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/11.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/12.png)|

|Ribbon Left|Ribbon Left Round|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/5.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/6.png)|

|Ribbon Right|Ribbon Right Round|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/7.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/8.png)|

</details>

<details>
<summary><b>Colors</b></summary>

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/ribbon/colors.gif)

</details>

### Slate

A collection of launchers for solid color wallpaers.

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/slate/main.gif)

**`Change Colors`** : Edit `$HOME/.config/rofi/launchers/slate/styles/colors.rasi` to change the colors.
```
@import "Black.rasi"
```

**`Change Style`** : Edit `$HOME/.config/rofi/launchers/slate/launcher.sh` to change the style.
```
theme="slate_full"
```

> Make sure you disable the random mode in the same script before using a single style.

<details>
<summary><b>Colors</b></summary>

|Dark|Light|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/slate/dark.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/slate/light.gif)|

</details>

## Powermenu

A collection of powermenu with different styles and colors.

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/powermenu/main.gif)

**`Change Colors`** : Edit `$HOME/.config/rofi/powermenu/styles/colors.rasi` to change the colors.
```
@import "nightly.rasi"
```

**`Change Style`** : Edit `$HOME/.config/rofi/powermenu/powermenu.sh` to change the style.
```
theme="full_circle"
```

> Make sure you disable the random mode in the same script before using a single style.

<details>
<summary><b>Previews</b></summary>

|Fullscreen |Row|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/powermenu/1.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/powermenu/2.gif)|

|Dock|Dropdown|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/powermenu/3.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/powermenu/4.gif)|

|Card|Column|
|-|-|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/powermenu/5.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/powermenu/6.gif)|

</details>

<details>
<summary><b>Colors</b></summary>

![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/previews/powermenu/colors.gif)

</details>

## Tips

### Simple way to execute scripts

There's a `$HOME/.config/rofi/bin` directory, which contains links to each script. you can execute these links to open any applet, menu, launcher or powermenu.

You can add `$HOME/.config/rofi/bin` directory to your `$PATH` variable so that entering `powermenu` in the terminal (or executing this command) will summon the ***Powermenu***. you can do it by -

- In `bash`
``` bash
# Add directory to the $PATH variable
echo "PATH=$PATH:~/.config/rofi/bin" >> ~/.profile
```

- In `zsh` (oh-my-zsh)
``` zsh
# Edit .zshrc and add this line
export PATH=$HOME/.config/rofi/bin:$PATH
```

**Note:** after doing this, your `$PATH` variable won't be updated, so you will need to log out and then back in to be able to summon the menus this way.

## Usage

### With polybar

An example to use these applets with polybar by adding modules and giving full paths of selected applet, eg: `~/.config/rofi/applets/menu/backlight.sh` or simply name, eg: `applet_backlight` if you followed the method above -

```bash
[module/backlight]
type = custom/text
content = 

content-background = ${color.bg}
content-foreground = ${color.cyan}

click-left = ~/.config/rofi/applets/menu/backlight.sh &

## Or...

[module/backlight]
type = custom/text
content = 

content-background = ${color.bg}
content-foreground = ${color.green}

click-left = applet_backlight

```

### With i3wm

You can call the scripts by giving full path, eg: `~/.config/rofi/bin/menu_powermenu` or follow method above to call the menu in one word. Then add these lines to your i3 config file -

```bash
set $mod Mod4
set $Alt Mod1
bindsym $mod+m exec --no-startup-id menu_mpd
bindsym $mod+n exec --no-startup-id menu_network
bindsym $mod+p exec --no-startup-id ~/.config/rofi/bin/menu_powermenu
#etc
```

### With Openbox

Same thing can be done with openbox by adding these lines to rc.xml file:

```xml
    <keybind key="W-p">
      <action name="Execute">
        <command>~/.config/rofi/bin/launcher_misc</command>
      </action>
    </keybind>
    <!-- Or -->
    <keybind key="W-x">
      <action name="Execute">
        <command>powermenu</command>
      </action>
    </keybind>
    <!-- etc -->
```

## FYI

- Sometimes i think... ***Why the hell i'm doing this?***
- Anyway... Pull Requests, Issues, Contributions are welcome.
- Share this with your friends, Have a good day.
