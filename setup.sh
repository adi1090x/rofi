#!/usr/bin/env bash

# Install script for rofi themes

# Dirs
DIR=`pwd`
FONT_DIR="$HOME/.local/share/fonts"
ROFI_DIR="$HOME/.config/rofi"

# Install Fonts
install_fonts() {
	echo -e "\n[*] Installing fonts..."
	if [[ -d "$FONT_DIR" ]]; then
		cp -rf $DIR/fonts/* "$FONT_DIR"
	else
		mkdir -p "$FONT_DIR"
		cp -rf $DIR/fonts/* "$FONT_DIR"
	fi
}

# Install Themes
install_themes() {
	if [[ -d "$ROFI_DIR" ]]; then
		echo -e "[*] Creating a backup of your rofi configs..."
		mv "$ROFI_DIR" "${ROFI_DIR}.old"
		{ mkdir -p "$ROFI_DIR"; cp -rf $DIR/$RES/* "$ROFI_DIR"; }
	else
		{ mkdir -p "$ROFI_DIR"; cp -rf $DIR/$RES/* "$ROFI_DIR"; }	
	fi
	if [[ -f "$ROFI_DIR/config.rasi" ]]; then
		echo -e "[*] Successfully Installed.\n"
		exit 0
	else
		echo -e "[!] Failed to install.\n"
		exit 1
	fi
}

# Clean up RES variable
clean_up_RES() {
	number_pattern='^[0-9]+p?$'
	if [[ "${RES}" =~ ${number_pattern} ]]; then
		RES="$(tr -d p <<<"$RES")p"
	else
		echo -e "Sorry, something went wrong when checking your" \
			"custom resolution.\n"\
			"Please enter the number of your resolution height" \
			"in pixels, e.g. 1440."
		exit 1
	fi
}

# Main
main() {
	clear
	cat <<- EOF
		[*] Installing Rofi Themes...

		[*] Choose your screen resolution -
		[1] 1920x1080
		[2] 1366x768
		[3] Custom (Run ./generate-custom-resolution-config.py first)

	EOF

	read -p "[?] Select Option : "

	if [[ $REPLY == "1" ]]; then
		RES='1080p'
		install_fonts
		install_themes
	elif [[ $REPLY == "2" ]]; then
		RES='720p'
		install_fonts
		install_themes
	elif [[ $REPLY == "3" ]]; then
		read -p "How many pixes high is your resolution? " RES
		clean_up_RES
		install_fonts
		install_themes
	else
		echo -e "\n[!] Invalid Option, Exiting...\n"
		exit 1
	fi
}

main
