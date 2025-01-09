#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Installer Script

## Colors ----------------------------
Color_Off='\033[0m'
BBlack='\033[1;30m' BRed='\033[1;31m'    BGreen='\033[1;32m' BYellow='\033[1;33m'
BBlue='\033[1;34m'  BPurple='\033[1;35m' BCyan='\033[1;36m'  BWhite='\033[1;37m'


## Directories ----------------------------
ROFI_INSTALL_DIR=$1 
FONT_INSTALL_DIR=$2

if [ -z "$ROFI_INSTALL_DIR" ]; then
    ROFI_INSTALL_DIR="$HOME/.config/rofi"
    FONT_DIR="$HOME/.local/share/fonts"
    ROFI_DIR="$HOME/.config/rofi"
else
    if [ -z "$FONT_INSTALL_DIR" ]; then
        FONT_DIR="$ROFI_INSTALL_DIR/fonts"
    else
        FONT_DIR="$FONT_INSTALL_DIR"
    fi
    ROFI_DIR="$ROFI_INSTALL_DIR"
fi

DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

# Install Fonts
install_fonts() {
	echo -e ${BBlue}"\n[*] Installing fonts to $FONT_DIR ${Color_Off}"

	if [ ! -d "$FONT_DIR" ]; then
		mkdir -p "$FONT_DIR"
	fi

	cp -rf $DIR/fonts/* "$FONT_DIR"

	echo -e ${BYellow}"[*] Updating font cache" ${Color_Off}
	fc-cache
}

# Install Themes
install_themes() {
	if [ -d "$ROFI_DIR" ]; then
		echo -e ${BPurple}"[*] Creating a backup of your rofi configs in '${ROFI_DIR}.${USER}'" ${Color_Off}
		mv "$ROFI_DIR" "${ROFI_DIR}.${USER}"
	fi
	echo -e ${BBlue}"[*] Installing rofi configs in '$ROFI_DIR'" ${Color_Off}
	{ mkdir -p "$ROFI_DIR"; cp -rf $DIR/files/* "$ROFI_DIR"; }

	if [ -f "$ROFI_DIR/config.rasi" ]; then
		echo -e ${BGreen}"[*] Successfully Installed." ${Color_Off}
		exit 0
	else
		echo -e ${BRed}"[!] Failed to install." ${Color_Off}
		exit 1
	fi
}

# Main
main() {
	install_themes
    echo ""
	install_fonts
    echo ""
}

main
