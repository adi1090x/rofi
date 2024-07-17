## Current Theme
DEFAULT_TYPE='type-1'
DEFAULT_STYLE='style-1'

echo $SCRIPT_DIR

# INPUT_THEME should be set by the script that sources this file, 
# if the user wants to override the default theme.
if [ -z "$INPUT_THEME" ]; then
    theme="$SCRIPT_DIR/../$DEFAULT_TYPE/$DEFAULT_STYLE.rasi"
elif [[ $1 == "-h" || $1 == "--help" ]]; then
    echo "Usage: $SCRIPT_INVOCATION [theme]"
    exit 0
else
    theme="$INPUT_THEME"
    if [ ! -d $theme ]; then
        # prepend current script path if theme is not found 
        theme="$SCRIPT_DIR/../$theme"

        if [ ! -d "$theme" ]; then
          # fail if we still can't find it.
          echo "Theme not found!"
          exit 1
        fi
    fi
fi
