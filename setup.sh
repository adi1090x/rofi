#!/usr/bin/env bash

# Install script for rofi themes

# Dirs
DIR="${0%/*}"
FONT_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/fonts"
ROFI_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/rofi"

set -eu
exit_msg="[!] Failed to install.\n"
trap 'echo -e $exit_msg' EXIT

# Install Fonts
install_fonts() {
	echo -e "\n[*] Installing fonts..."
	[[ -d "$FONT_DIR" ]] || mkdir -p "$FONT_DIR"
	cp -r "$DIR"/fonts/* "$FONT_DIR"
}

# Install Themes
install_themes() {
	if [[ -d "$ROFI_DIR" ]]; then
		echo -e "[*] Creating a backup of your rofi configs..."
		mv -f "$ROFI_DIR" "${ROFI_DIR}.old"
	fi
	cp -r "$DIR/$RES" "$ROFI_DIR"
}

# Main
main() {
	clear
	cat <<- EOF
		[*] Installing Rofi Themes...
		
		[*] Choose your screen resolution -
		[1] 1920x1080
		[2] 1366x768
	
	EOF

	read -p "[?] Select Option : "

	case $REPLY in
		1) RES='1080p' ;;
		2) RES='720p' ;;
		*) exit_msg="\n[!] Invalid Option, Exiting...\n"; exit 1 ;;
	esac

	install_fonts
	install_themes
	exit_msg="[*] Successfully Installed.\n"
	exit 0
}

main
