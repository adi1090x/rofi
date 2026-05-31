#!/bin/bash

background=$(sed -n 's/^ *background: *\(#\([0-9a-fA-F]\{6\}\)\);.*$/\1/p' ~/.cache/wal/colors-rofi-dark.rasi)
foreground=$(sed -n 's/^ *foreground: *\(#\([0-9a-fA-F]\{6\}\)\);.*$/\1/p' ~/.cache/wal/colors-rofi-dark.rasi)
selected_normal_background=$(sed -n 's/^ *selected-normal-background: *\(#\([0-9a-fA-F]\{6\}\)\);.*$/\1/p' ~/.cache/wal/colors-rofi-dark.rasi)
selected_active_background=$(sed -n 's/^ *selected-active-background: *\(#\([0-9a-fA-F]\{6\}\)\);.*$/\1/p' ~/.cache/wal/colors-rofi-dark.rasi)
selected_urgent_background=$(sed -n 's/^ *selected-urgent-background: *\(#\([0-9a-fA-F]\{6\}\)\);.*$/\1/p' ~/.cache/wal/colors-rofi-dark.rasi)

sed -i "s/background: .*/background: $background;/" ~/.config/rofi/colors/pywal.rasi
sed -i "s/background-alt: .*/background-alt: $background;/" ~/.config/rofi/colors/pywal.rasi
sed -i "s/foreground: .*/foreground: $foreground;/" ~/.config/rofi/colors/pywal.rasi
sed -i "s/selected: .*/selected: $selected_normal_background;/" ~/.config/rofi/colors/pywal.rasi
sed -i "s/active: .*/active: $selected_active_background;/" ~/.config/rofi/colors/pywal.rasi
sed -i "s/urgent: .*/urgent: $selected_urgent_background;/" ~/.config/rofi/colors/pywal.rasi
