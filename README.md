# Rofi Applets & Menus

<p align="left">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-blueviolet?style=flat-square">
  <img src="https://img.shields.io/github/license/adi1090x/rofi?style=flat-square">
  <img src="https://img.shields.io/github/stars/adi1090x/rofi?color=red&style=flat-square">
  <img src="https://img.shields.io/github/forks/adi1090x/rofi?style=flat-square">
  <img src="https://img.shields.io/github/issues/adi1090x/rofi?style=flat-square">
</p>

<p align="left">
<a href="https://www.buymeacoffee.com/adi1090x"><img src="https://raw.githubusercontent.com/adi1090x/files/master/other/bmac.png" alt="Buy Me A Coffee"></a>
<a href="https://ko-fi.com/adi1090x"><img src="https://raw.githubusercontent.com/adi1090x/files/master/other/kofi.png" alt="Support me on ko-fi"></a>
</p>

A collection of custom *applets* and *menus* made using [rofi](https://github.com/davatorium/rofi) and its dmenu emulation, inspired by [rofi-menus](https://gitlab.com/vahnrr/rofi-menus).

|Menus|Applets|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus/0.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets/0.gif)|

|Launchers|Sidemenus|
|-|-|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/android.gif)|

<details>
<summary>Quick Links</summary>

- [Installation](https://github.com/adi1090x/rofi#installation)
- [Album](https://www.buymeacoffee.com/adi1090x/posts)
- [Applets](https://github.com/adi1090x/rofi#applets)
- [Menus](https://github.com/adi1090x/rofi#menus)
- [Launchers](https://github.com/adi1090x/rofi#app-launchers)
- [Sidemenus](https://github.com/adi1090x/rofi#android-style-sidemenus)
- [Colorschemes](https://github.com/adi1090x/rofi#colorschemes)
- [Usage](https://github.com/adi1090x/rofi#tips)
  * [Polybar](https://github.com/adi1090x/rofi#use-with-polybar)
  * [I3wm](https://github.com/adi1090x/rofi#use-with-i3)
  * [Openbox](https://github.com/adi1090x/rofi#use-with-openbox)

</details>

### Dependencies

| Applets/Menus       | Package(s)                                                   | Note   |
|------------|--------------------------------------------------------------|-----------|
| Apps       | `termite`, `thunar`, `geany`, `firefox`, `lxmusic`, `xfce4-settings-manager` | Or any other softwares you use most, just change this in *~/.config/rofi/scripts/apps.sh* & also in *menu*.|
| Backlight  | `xbacklight`, `dunst`  | Adjust brightness & Notify. |
| Battery  | `acpi` & `xfce4-power-manager-settings` | To get battery info & launch power manager.|
| MPD        | `mpd` and `mpc`  | `mpc` is a cli based client for `mpd`.|
| Network    | `dnsutils`, `nmcli`, `nmtui`, `bmon`, `nm-connection-editor` & `termite` | `Termite` is required to open `nmtui` & `bmon`, or any other terminal you use, just change this in *~/.config/rofi/scripts/network.sh* & also in *menu*. |
| Powermenu      | `systemctl`, `i3lock` | By default `systemctl` is used for most actions, `i3lock` is used for locking, `openbox --exit` is used to log out. you might want to change these commands to match your setup. |
| Quicklinks | `firefox` (or `chromium`) | By default `firefox` is used to open links, you can use any other browser if you want, change accordingly. |
| Screenshot | `scrot` `maim` & `viewnior` | `scrot` to take shot & `viewnior` to open it after taking screenshot, you can change to whatever you use. |
| Time | - | - |
| Volume | `amixer` | To set the volume. |

### Fonts

+ **Comfortaa** Used for normal text, ([preview](https://www.dafont.com/comfortaa.font) and [source](https://www.deviantart.com/aajohan/art/Comfortaa-font-105395949)).
+ **Hurmit Nerd Font Mono** Used for icons, ([preview](https://app.programmingfonts.org/#hermit) and [source](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hermit)).
+ **Feather** For icons used in android style sidemenus, [Here](https://github.com/adi1090x/rofi/blob/master/fonts/feather.ttf)
+ **Fantasque** For App launchers, [Here](https://github.com/adi1090x/rofi/blob/master/fonts)
+ **Iosevka** For App launchers, [Here](https://github.com/adi1090x/rofi/blob/master/fonts)

**Warning:** Do not change the `@icon-font` variable to another font, or you will end up messing with all applets/menus layout.

### Installation

+ First of all make sure you have `rofi` installed:
``` bash
# Arch / Arch-based
pacman -S rofi

# Debian / Ubuntu
apt-get install rofi

# Fedora
dnf install rofi
```

+ Then, clone this repository

```
# 1. Go in rofi's config folder
cd ~/.config/rofi

# 2. Clone this repo
git clone https://github.com/adi1090x/rofi.git

# 3. Make sure the scripts are executables
cd rofi && chmod +x scripts/*

# 4. Copy necessary files to the right location
cp -r bin scripts themes config.rasi ~/.config/rofi

# 5. Clean up rofi's config folder
cd .. && rm -r rofi

# 6. Call the scripts (from the scripts folder)
cd scripts
./backlight.sh

# (or from anywhere)
. ~/.config/rofi/scripts/backlight.sh
```

### Applets

![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets.gif) <br />

- **Apps:** Shortcuts for most used applications.
- **Backlight:** Display and adjust screen brightness.
- **Battery:** Display battery percentage & charging-discharging status with dynamic icons.
- **MPD:** Control the song play through [mpd](https://github.com/MusicPlayerDaemon/).
- **Network:** Display Online-Offline status with dynamic icons. 
- **Powermenu:** A classic power menu, with Uptime.
- **Quicklinks:** Bookmarks shortcuts for most used sites.
- **Screenshot:** Take screenshots using [scrot](https://github.com/dreamer/scrot).
- **Time:** Display Time, Day & Date.
- **Volume:** Display and control volume with dynamic icons for mute status.

|Powermenu|Time|Network|Battery|
|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets/1.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets/2.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets/3.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets/4.gif)|

|Volume|Backlight|Screenshot|MPD|
|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets/5.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets/6.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets/7.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets/8.png)|

|Quicklinks|Apps|
|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets/9.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/applets/10.png)|

### Menus

![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus.gif) <br />

- **Apps:** Shortcuts for most used applications.
- **Backlight:** Display and adjust screen brightness.
- **Battery:** Display battery percentage & charging-discharging status with dynamic icons.
- **MPD:** Control the song play through [mpd](https://github.com/MusicPlayerDaemon/).
- **Network:** Display SSID, IP, Online-Offline status with dynamic icons. 
- **Powermenu:** A classic power menu, shows Uptime, CPU & Memory usages.
- **Quicklinks:** Bookmarks shortcuts for most used sites.
- **Screenshot:** Take screenshots using [scrot](https://github.com/dreamer/scrot).
- **Time:** Display Time, Day, Month, Date.
- **Volume:** Display and control volume with dynamic icons for mute status.

|Powermenu|Time|Network|Battery|
|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus/1.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus/2.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus/3.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus/4.gif)|

|Volume|Backlight|Screenshot|MPD|
|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus/5.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus/6.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus/7.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus/8.png)|

|Quicklinks|Apps|
|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus/9.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/menus/10.png)|

### Android Style Sidemenus

- **Apps:** Shortcuts for most used applications.
- **Backlight:** Adjust screen brightness.
- **MPD:** Control the song play through [mpd](https://github.com/MusicPlayerDaemon/).
- **Powermenu:** Android like Powermenu.
- **Quicklinks:** Bookmarks shortcuts for most used sites.
- **Screenshot:** Take screenshots using [scrot](https://github.com/dreamer/scrot).
- **Volume:** Control volume with dynamic icons for mute status.

![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/android.gif) <br />

### App Launchers

A collection for every app laucher i've used.

***Stuff you need***
+ *Icon pack* : [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
+ *Fonts* : [Fantasque & Iosevka](https://github.com/adi1090x/rofi/blob/master/fonts)
+ *Compton_tryone* : For Blur, [Here](https://github.com/tryone144/compton)

***Styling***
+ Edit the `launcher.sh` file and change the **style** variable to set the style you like.
+ Edit the selected `.rasi` file and *uncomment* the desired color/style. 

> Click on thumbnails to enlarge the image/gif.

|Icons|Icons Rainbow|Icons Fullscreen|Icons Sidebar|Icons Popup|Simple Dark|
|--|--|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/1.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/2.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/3.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/4.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/5.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/6.gif)|

|Grid|Grid Round|Grid Full|Purple|Rainbow Sidebar|Rainbow|
|--|--|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/7.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/8.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/10.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/9.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/11.gif)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers/12.gif)|

### App Launchers (rofi-git)

> These themes/configs only works with `rofi-git(aur)`. You need to build latest rofi if you're not using *archlinux*.
>
> Tested With Rofi Version : **1.5.4-76-gca067234**

***Stuff you need***
+ *Latest Rofi* : [Here...](https://github.com/davatorium/rofi)
+ *Icon pack* : [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) & [Breeze](https://github.com/KDE/breeze-icons)
+ *Fonts* : [Fantasque](https://github.com/adi1090x/rofi/blob/master/fonts) & [Noto Sans](https://github.com/googlefonts/noto-fonts)
+ *For Blur* : [Compton Tryone](https://github.com/tryone144/compton)

***Styling***
+ Edit the `launcher.sh` file and change the **style** variable to set the style you like.
+ Edit the selected `.rasi` file and *uncomment* the desired color/style. 

|Blurry|Launchpad|
|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/1.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/6.png)|

|Slingshot Light|Slingshot Dark|
|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/7.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/8.png)|

|Simple Menu Light|Simple Menu Dark|Krunner Light|Krunner Dark|
|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/2.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/3.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/4.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/5.png)|

|AppDrawer Light|AppDrawer Dark|AppFolder Light|AppFolder Dark|
|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/14.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/15.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/16.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/17.png)|

|Row Light|Row Dark|Column Light|Column Dark|
|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/20.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/21.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/18.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/19.png)|

|RowCenter Light|RowCenter Dark|Row dock|Row Dropdown|
|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/22.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/23.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/26.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/27.png)|

|Screen Light|Screen Dark|
|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/24.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/25.png)|

|GnomeDo Classic|GnomeDo Light|GnomeDo Black|GnomeDo Transparent|
|--|--|--|--|
|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/9.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/10.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/11.png)|![gif](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/launchers_git/13.png)|

### Colorschemes

The files are stored in *~/.config/rofi/themes/colorschemes*.
To change the active colorscheme simply change the import line in *~/.config/rofi/themes/colors.rasi*.

If you wish to change the colorscheme for only one specific applet/menu, you can add the line below after `@import "colors.rasi"` to the *~/.config/rofi/themes/<menu-name>.rasi* or *~/.config/rofi/themes/menu/<menu-name>.rasi* file.

``` css
@import "colorschemes/<colorscheme-name>.rasi"
```

|Material Dark|Material Light|
|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/md.gif)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/ml.gif)|

|Adapta-Nokto|Adapta|Arc-Dark|Arc|
|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/2.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/1.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/4.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/3.png)|

|adwaita|gruvbox|dark|armchair|darkpink|
|--|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/5.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/6.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/7.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/8.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/9.png)|

|fresh|inside|party|sirin|minimo|
|--|--|--|--|--|
|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/10.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/11.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/12.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/13.png)|![img](https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/colors/14.png)|

## Tips

### Simple way to execute applets/menus

You can copy links from `bin` folder to your `$PATH` variable so that entering `appsmenu` in the terminal (or executing this command) will summon the appsmenu. you can do it by -

``` bash
mkdir ~/.bin
cp -r ~/.config/rofi/bin/* ~/.bin
# Add folder to the $PATH variable
echo "PATH=$PATH:~/.bin" >> ~/.profile
```

**Note:** after doing this your `$PATH` variable won't be updated, so you will need to log out and then back in to be able to summon the menus this way.

### Use With polybar

This is a simple example on how can you use these applets with polybar by adding modules and giving full paths of selected applet like *~/.config/rofi/scripts/backlight.sh* or simply name if you followed the above method -

```bash
[module/backlight]
type = custom/text
content = 

content-background = ${color.bg}
content-foreground = ${color.cyan}

click-left = ~/.config/rofi/scripts/backlight.sh

## Or...

[module/backlight]
type = custom/text
content = 

content-background = ${color.bg}
content-foreground = ${color.green}

click-left = backlightmenu

```

Here's How it looks on polybar with different colorschemes for each applet...

<p align="left">
  <img src=https://raw.githubusercontent.com/adi1090x/files/master/rofi/images/bar.gif>
</p>

### Use With i3

You can call the scripts by giving their fulls paths like *~/.config/rofi/scripts/<script-name>.sh* or follow method above to call the menus in one word. Then add these lines to your i3 config file:

```bash
set $mod Mod4
set $Alt Mod1
bindsym $mod+m exec --no-startup-id mpdmenu
bindsym $mod+n exec --no-startup-id networkmenu
bindsym $mod+p exec --no-startup-id ~/.config/rofi/scripts/powermenu.sh
#etc
```

### Use With Openbox

Same thing can be done with openbox by adding these lines to rc.xml file:

```xml
    <keybind key="W-m">
      <action name="Execute">
        <command>~/.config/rofi/scripts/mpd.sh</command>
      </action>
    </keybind>
    <!-- Or -->
    <keybind key="W-m">
      <action name="Execute">
        <command>mpdmenu</command>
      </action>
    </keybind>
    <!-- etc -->
```

### Support This Project
<p align="left">
<a href="https://www.paypal.me/adi1090x" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/paypal-adi1090x-blue?style=for-the-badge&logo=paypal"></a>
<a href="https://www.buymeacoffee.com/adi1090x" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/BuyMeAcoffee-adi1090x-orange?style=for-the-badge&logo=buy-me-a-coffee"></a>  
<a href="https://ko-fi.com/adi1090x" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/KoFi-adi1090x-red?style=for-the-badge&logo=ko-fi"></a>  
</p>

### Bottom Line
+ PR's, Issues, Contributions are welcome.
+ No PR's for color-schemes, they always endup looking similar.
+ Have Fun!
