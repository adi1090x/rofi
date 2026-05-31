## Home Manager module for adi1090x rofi themes
##
## Exposes options for:
##   - launcher command name, layout type, style, and show-mode
##   - power menu command name, layout type, style, and per-action commands
##   - applets layout type + style
##   - favourite-apps applet commands
##   - quick-links applet entries
##   - global color scheme (applies to all applets)
##   - rofi config.rasi (modi, font, icon theme, terminal, …)
##   - font installation + optional runtime dependency installation
##
## Usage:
##
##   inputs.rofi-themes.url = "github:yourname/rofi";
##
##   home-manager.users.<name> = {
##     imports = [ inputs.rofi-themes.homeManagerModules.default ];
##     programs.rofi-adi1090x = {
##       enable      = true;
##       colorScheme = "catppuccin";
##       launcher.commandName = "app-launcher";
##       launcher.type        = 4;
##       launcher.style       = 7;
##       powermenu.commandName = "power-menu";
##       powermenu.lock        = "swaylock -f";
##       applets.type  = 2;
##       applets.style = 1;
##       applets.apps.terminal = "kitty";
##       rofiConfig.font = "JetBrains Mono Nerd Font 12";
##     };
##   };

{ self }:
{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.programs.rofi-adi1090x;

  # Power-menu items in display order.
  # Items with a null `cmd` are excluded from the generated menu.
  pmAllItems = [
    { var = "opt_lock";      label = " Lock";      cmd = cfg.powermenu.lock;      }
    { var = "opt_suspend";   label = " Suspend";   cmd = cfg.powermenu.suspend;   }
    { var = "opt_hibernate"; label = " Hibernate"; cmd = cfg.powermenu.hibernate; }
    { var = "opt_logout";    label = " Logout";    cmd = cfg.powermenu.logout;    }
    { var = "opt_reboot";    label = " Reboot";    cmd = cfg.powermenu.reboot;    }
    { var = "opt_shutdown";  label = " Shutdown";  cmd = cfg.powermenu.shutdown;  }
  ];

in {

  # ── option declarations ────────────────────────────────────────────────────

  options.programs.rofi-adi1090x = {

    enable = mkEnableOption "adi1090x rofi themes, launchers, applets, and power menus";

    # ── fonts / deps ──────────────────────────────────────────────────────────

    installFonts = mkOption {
      type    = types.bool;
      default = true;
      description = ''
        Install the bundled fonts (Iosevka Nerd Font, JetBrains Mono Nerd Font,
        GrapeNuts, Icomoon-Feather) into ~/.local/share/fonts/rofi-adi1090x and
        enable fontconfig so they are discoverable.
      '';
    };

    withOptionalDeps = mkOption {
      type    = types.bool;
      default = false;
      description = ''
        Install optional runtime dependencies used by the bundled applets:
          acpi (battery), mpd + mpc (music),
          maim + xrandr (screenshot), dunst (notifications), xclip (clipboard),
          alsa-utils / pavucontrol (volume), polkit (run-as-root applet).
      '';
    };

    extraPackages = mkOption {
      type        = types.listOf types.package;
      default     = [ ];
      description = ''
        Additional packages added to the user environment alongside rofi.
        Useful for terminal emulators or other tools referenced by the scripts.
      '';
    };

    # ── color scheme ──────────────────────────────────────────────────────────

    colorScheme = mkOption {
      type = types.enum [
        "adapta"    "arc"       "black"     "catppuccin" "cyberpunk"
        "dracula"   "everforest" "gruvbox"  "lovelace"   "navy"
        "nord"      "onedark"   "paper"     "solarized"  "tokyonight"
        "yousai"
      ];
      default     = "onedark";
      description = "Color scheme applied to all applets (must match a file in files/colors/).";
      example     = "catppuccin";
    };

    # ── launcher ──────────────────────────────────────────────────────────────

    launcher = {
      commandName = mkOption {
        type        = types.str;
        default     = "rofi-launcher";
        description = "Name of the executable added to PATH that opens the app launcher.";
        example     = "app-launcher";
      };

      type = mkOption {
        type        = types.int;
        default     = 1;
        description = "Launcher layout family (integer, value is validated by the theme scripts rather than the module).";
      };

      style = mkOption {
        type        = types.int;
        default     = 1;
        description = "Style variant within the chosen launcher type (integer, themes decide whether a given number exists).";
      };

      show = mkOption {
        type        = types.str;
        default     = "drun";
        description = ''
          Rofi mode passed to -show when the launcher is opened.
          Common values: drun, run, window, filebrowser.
        '';
        example     = "window";
      };
    };

    # ── power menu ────────────────────────────────────────────────────────────

    powermenu = {
      commandName = mkOption {
        type        = types.str;
        default     = "rofi-powermenu";
        description = "Name of the executable added to PATH that opens the power menu.";
        example     = "power-menu";
      };

      type = mkOption {
        type        = types.int;
        default     = 1;
        description = "Power menu layout family (integer, themes enforce their own limits).";
      };

      style = mkOption {
        type        = types.int;
        default     = 1;
        description = "Style variant within the chosen power menu type (integer, themes enforce their own limits).";
      };

      lock = mkOption {
        type        = types.nullOr types.str;
        default     = null;
        description = "Screen-lock command. null removes the entry from the menu entirely.";
        example     = "swaylock -f";
      };

      suspend = mkOption {
        type        = types.nullOr types.str;
        default     = "systemctl suspend";
        description = "Suspend command. null removes the entry from the menu.";
      };

      hibernate = mkOption {
        type        = types.nullOr types.str;
        default     = null;
        description = "Hibernate command. null removes the entry from the menu.";
        example     = "systemctl hibernate";
      };

      logout = mkOption {
        type        = types.nullOr types.str;
        default     = "loginctl kill-session \"$XDG_SESSION_ID\"";
        description = "Logout command. null removes the entry from the menu.";
      };

      reboot = mkOption {
        type        = types.nullOr types.str;
        default     = "systemctl reboot";
        description = "Reboot command. null removes the entry from the menu.";
      };

      shutdown = mkOption {
        type        = types.nullOr types.str;
        default     = "systemctl poweroff";
        description = "Power-off command. null removes the entry from the menu.";
      };
    };

    # ── applets ───────────────────────────────────────────────────────────────

    applets = {
      type = mkOption {
        type        = types.int;
        default     = 1;
        description = "Applet layout family applied to every applet script (integer, themes enforce their own limits).";
      };

      style = mkOption {
        type        = types.int;
        default     = 1;
        description = "Style variant within the chosen applet type (integer, themes enforce their own limits).";
      };

      # ── apps applet ──────────────────────────────────────────────────────

      apps = {
        terminal = mkOption {
          type        = types.str;
          default     = "alacritty";
          description = "Terminal emulator launched by the apps applet.";
          example     = "kitty";
        };
        fileManager = mkOption {
          type        = types.str;
          default     = "thunar";
          description = "File manager launched by the apps applet.";
          example     = "nautilus";
        };
        textEditor = mkOption {
          type        = types.str;
          default     = "geany";
          description = "Text editor launched by the apps applet.";
          example     = "code";
        };
        browser = mkOption {
          type        = types.str;
          default     = "firefox";
          description = "Web browser launched by the apps applet.";
          example     = "chromium";
        };
        music = mkOption {
          type        = types.str;
          default     = "alacritty -e ncmpcpp";
          description = "Music player command launched by the apps applet.";
          example     = "spotify";
        };
        settings = mkOption {
          type        = types.str;
          default     = "xfce4-settings-manager";
          description = "System settings application launched by the apps applet.";
          example     = "gnome-control-center";
        };
      };

      # ── quick links applet ───────────────────────────────────────────────

      quickLinks = mkOption {
        type = types.listOf (types.submodule {
          options = {
            name = mkOption {
              type        = types.str;
              description = "Display label shown in the rofi menu.";
            };
            url = mkOption {
              type        = types.str;
              description = "URL opened with xdg-open when the entry is selected.";
            };
            icon = mkOption {
              type        = types.str;
              default     = "";
              description = "Optional Nerd-Font icon character prepended to the label.";
            };
          };
        });
        default = [
          { name = "Google";  url = "https://www.google.com/";  icon = ""; }
          { name = "Gmail";   url = "https://mail.google.com/"; icon = ""; }
          { name = "YouTube"; url = "https://www.youtube.com/"; icon = ""; }
          { name = "GitHub";  url = "https://www.github.com/";  icon = ""; }
          { name = "Reddit";  url = "https://www.reddit.com/";  icon = ""; }
          { name = "Twitter"; url = "https://www.twitter.com/"; icon = ""; }
        ];
        description = ''
          Entries shown in the quick-links applet (maximum 6 are used).
          Each entry requires a name and a url; icon is an optional Nerd-Font char.
        '';
      };
    };

    # ── rofi global config ────────────────────────────────────────────────────

    rofiConfig = {
      modi = mkOption {
        type        = types.str;
        default     = "drun,run,filebrowser,window";
        description = "Comma-separated list of enabled rofi modes.";
        example     = "drun,run,window";
      };

      terminal = mkOption {
        type        = types.str;
        default     = "rofi-sensible-terminal";
        description = "Terminal command rofi uses when it needs to open a terminal.";
        example     = "alacritty";
      };

      font = mkOption {
        type        = types.str;
        default     = "Mono 12";
        description = "Default font string passed to rofi.";
        example     = "JetBrains Mono Nerd Font 12";
      };

      iconTheme = mkOption {
        type        = types.str;
        default     = "Papirus";
        description = "Icon theme used when showIcons is true.";
        example     = "hicolor";
      };

      showIcons = mkOption {
        type        = types.bool;
        default     = true;
        description = "Whether rofi shows application icons next to entries.";
      };

      extraConfig = mkOption {
        type        = types.lines;
        default     = "";
        description = ''
          Verbatim lines appended inside the configuration { } block of
          config.rasi. Use for any rofi setting not covered by the options above.
        '';
        example = ''
          display-drun: "Apps";
          drun-display-format: "{name}";
          disable-history: true;
        '';
      };
    };
  };

  # ── implementation ─────────────────────────────────────────────────────────

  config = mkIf cfg.enable (
    let

      # ── power menu script ──────────────────────────────────────────────────

      pmItems = filter (i: i.cmd != null) pmAllItems;

      # bash variable declarations: opt_lock=' Lock'
      pmVarDecls = concatMapStrings
        (i: "${i.var}='${i.label}'\n")
        pmItems;

      # one printf line per enabled item, feeds the rofi -dmenu pipe
      pmPrintfLines = concatMapStrings
        (i: "  printf '%s\\n' \"$${i.var}\"\n")
        pmItems;

      # case entries: "$opt_lock") swaylock -f ;;
      pmCaseEntries = concatMapStrings
        (i: "  \"$${i.var}\") ${i.cmd} ;;\n")
        pmItems;

      powerMenuCmd = pkgs.writeShellScriptBin cfg.powermenu.commandName ''
        dir="$HOME/.config/rofi/powermenu/type-${toString cfg.powermenu.type}"
        theme="style-${toString cfg.powermenu.style}"
        uptime="$(uptime -p | sed -e 's/up //g')"
        host="$(hostname)"

        ${pmVarDecls}
        yes=' Yes'
        no=' No'

        rofi_cmd() {
          rofi -dmenu \
            -p "$host" \
            -mesg "Uptime: $uptime" \
            -theme "$dir/$theme.rasi"
        }

        confirm_cmd() {
          rofi \
            -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 250px;}' \
            -theme-str 'mainbox {children: [ "message", "listview" ];}' \
            -theme-str 'listview {columns: 2; lines: 1;}' \
            -theme-str 'element-text {horizontal-align: 0.5;}' \
            -theme-str 'textbox {horizontal-align: 0.5;}' \
            -dmenu -p 'Confirmation' -mesg 'Are you sure?' \
            -theme "$dir/$theme.rasi"
        }

        chosen="$({
        ${pmPrintfLines}
        } | rofi_cmd)"

        [[ -z "$chosen" ]] && exit 0

        confirmed="$(printf '%s\n' "$yes" "$no" | confirm_cmd)"
        [[ "$confirmed" != "$yes" ]] && exit 0

        case "$chosen" in
        ${pmCaseEntries}
        esac
      '';

      # ── launcher script ────────────────────────────────────────────────────

      launcherCmd = pkgs.writeShellScriptBin cfg.launcher.commandName ''
        exec rofi \
          -show ${cfg.launcher.show} \
          -theme "$HOME/.config/rofi/launchers/type-${toString cfg.launcher.type}/style-${toString cfg.launcher.style}.rasi"
      '';

      # ── apps applet (generated so app commands are baked in) ──────────────

      appsScript = pkgs.writeShellScript "apps.sh" ''
        #!/usr/bin/env bash
        source "$HOME/.config/rofi/applets/shared/theme.bash"
        theme="$type/$style"

        prompt='Applications'
        mesg='Favourite Applications'

        if [[ "$theme" == *'type-1'* ]] || [[ "$theme" == *'type-3'* ]] || [[ "$theme" == *'type-5'* ]]; then
          list_col='1'; list_row='6'
        elif [[ "$theme" == *'type-2'* ]] || [[ "$theme" == *'type-4'* ]]; then
          list_col='6'; list_row='1'
        fi

        option_1=" Terminal (${cfg.applets.apps.terminal})"
        option_2=" Files (${cfg.applets.apps.fileManager})"
        option_3=" Editor (${cfg.applets.apps.textEditor})"
        option_4=" Browser (${cfg.applets.apps.browser})"
        option_5=" Music (${cfg.applets.apps.music})"
        option_6=" Settings (${cfg.applets.apps.settings})"

        rofi_cmd() {
          rofi \
            -theme-str "listview {columns: $list_col; lines: $list_row;}" \
            -theme-str 'textbox-prompt-colon {str: "";}' \
            -dmenu -p "$prompt" -mesg "$mesg" -markup-rows \
            -theme "$theme"
        }

        chosen="$(printf '%s\n' \
          "$option_1" "$option_2" "$option_3" \
          "$option_4" "$option_5" "$option_6" | rofi_cmd)"

        case "$chosen" in
          "$option_1") ${cfg.applets.apps.terminal}    ;;
          "$option_2") ${cfg.applets.apps.fileManager} ;;
          "$option_3") ${cfg.applets.apps.textEditor}  ;;
          "$option_4") ${cfg.applets.apps.browser}     ;;
          "$option_5") ${cfg.applets.apps.music}       ;;
          "$option_6") ${cfg.applets.apps.settings}    ;;
        esac
      '';

      # ── quick links applet (generated so URLs are baked in) ───────────────

      qlItems    = take 6 cfg.applets.quickLinks;
      qlItemsIdx = imap1 (idx: item: { inherit idx; inherit (item) name url icon; }) qlItems;
      numQl      = length qlItems;

      # Determine rofi grid at Nix eval-time (mirrors the original runtime logic)
      isHorizType   = cfg.applets.type == 2 || cfg.applets.type == 4;
      qlListCols    = if isHorizType then toString numQl else "1";
      qlListRows    = if isHorizType then "1"            else toString numQl;

      qlVarDecls    = concatMapStrings
        (i: "option_${toString i.idx}='${i.icon} ${i.name}'\n")
        qlItemsIdx;

      qlPrintfLines = concatMapStrings
        (i: "  printf '%s\\n' \"$option_${toString i.idx}\"\n")
        qlItemsIdx;

      qlCaseEntries = concatMapStrings
        (i: "  \"$option_${toString i.idx}\") xdg-open '${i.url}' ;;\n")
        qlItemsIdx;

      quickLinksScript = pkgs.writeShellScript "quicklinks.sh" ''
        #!/usr/bin/env bash
        source "$HOME/.config/rofi/applets/shared/theme.bash"
        theme="$type/$style"

        prompt='Quick Links'

        if [[ "$theme" == *'type-1'* ]] || [[ "$theme" == *'type-5'* ]]; then
          efonts="JetBrains Mono Nerd Font 10"
        else
          efonts="JetBrains Mono Nerd Font 28"
        fi

        ${qlVarDecls}

        rofi_cmd() {
          rofi \
            -theme-str "listview {columns: ${qlListCols}; lines: ${qlListRows};}" \
            -theme-str 'textbox-prompt-colon {str: "";}' \
            -theme-str "element-text {font: \"$efonts\";}" \
            -dmenu -p "$prompt" -markup-rows \
            -theme "$theme"
        }

        chosen="$({
        ${qlPrintfLines}
        } | rofi_cmd)"

        case "$chosen" in
        ${qlCaseEntries}
        esac
      '';

      # ── applets/bin derivation ─────────────────────────────────────────────
      # Copy all static applet scripts preserving execute bits, then replace
      # apps.sh and quicklinks.sh with the generated option-aware versions.

      appletsBinDir = pkgs.runCommand "rofi-applets-bin" { } ''
        mkdir -p "$out"
        for f in ${self}/files/applets/bin/*.sh; do
          install -Dm755 "$f" "$out/$(basename "$f")"
        done
        install -Dm755 ${appsScript}       "$out/apps.sh"
        install -Dm755 ${quickLinksScript} "$out/quicklinks.sh"
      '';

    in mkMerge [

      # ── core configuration ─────────────────────────────────────────────────

      {
        assertions = [{
          assertion = pkgs.stdenv.isLinux;
          message   = "programs.rofi-adi1090x is only supported on Linux.";
        }];

        home.packages = with pkgs;
          [ rofi launcherCmd powerMenuCmd ]
          ++ optionals cfg.withOptionalDeps [
            acpi mpd mpc maim xorg.xrandr
            dunst xclip alsa-utils pavucontrol polkit
          ]
          ++ cfg.extraPackages;

        # ── config.rasi (generated) ──────────────────────────────────────────

        xdg.configFile."rofi/config.rasi".text = ''
          /**
           * Generated by home-manager programs.rofi-adi1090x – do not edit.
           * Customise via the module options instead.
           **/
          configuration {
            modi:             "${cfg.rofiConfig.modi}";
            terminal:         "${cfg.rofiConfig.terminal}";
            font:             "${cfg.rofiConfig.font}";
            icon-theme:       "${cfg.rofiConfig.iconTheme}";
            show-icons:       ${boolToString cfg.rofiConfig.showIcons};

            case-sensitive:   false;
            cycle:            true;
            normalize-match:  true;
            scroll-method:    0;
            steal-focus:      false;
            matching:         "normal";
            tokenize:         true;
            disable-history:  false;
            sorting-method:   "normal";
            max-history-size: 25;
            click-to-exit:    true;

            drun-display-format:        "{name} [<span weight='light' size='small'><i>({generic})</i></span>]";
            drun-show-actions:          false;
            drun-use-desktop-cache:     false;
            drun-reload-desktop-cache:  false;
            drun { parse-user: true; parse-system: true; }

            filebrowser { directories-first: true; sorting-method: "name"; }
            timeout      { action: "kb-cancel"; delay: 0; }

            ${cfg.rofiConfig.extraConfig}
          }
        '';

        # ── applets/shared (generated) ───────────────────────────────────────

        # Controls which type/style every applet script uses at runtime.
        xdg.configFile."rofi/applets/shared/theme.bash".text = ''
          ## Generated by home-manager programs.rofi-adi1090x – do not edit.
          type="$HOME/.config/rofi/applets/type-${toString cfg.applets.type}"
          style='style-${toString cfg.applets.style}.rasi'
        '';

        # Controls the color palette imported by every applet theme.
        xdg.configFile."rofi/applets/shared/colors.rasi".text = ''
          /**
           * Generated by home-manager programs.rofi-adi1090x – do not edit.
           * Active color scheme: ${cfg.colorScheme}
           **/
          @import "~/.config/rofi/colors/${cfg.colorScheme}.rasi"
        '';

        # ── applets static files ─────────────────────────────────────────────

        xdg.configFile."rofi/applets/shared/fonts.rasi".source =
          "${self}/files/applets/shared/fonts.rasi";

        # Applet bin dir: static scripts + generated apps.sh + quicklinks.sh
        xdg.configFile."rofi/applets/bin".source = appletsBinDir;

        # Per-type style rasi files (purely static, link wholesale)
        xdg.configFile."rofi/applets/type-1".source = "${self}/files/applets/type-1";
        xdg.configFile."rofi/applets/type-2".source = "${self}/files/applets/type-2";
        xdg.configFile."rofi/applets/type-3".source = "${self}/files/applets/type-3";
        xdg.configFile."rofi/applets/type-4".source = "${self}/files/applets/type-4";
        xdg.configFile."rofi/applets/type-5".source = "${self}/files/applets/type-5";

        # ── remaining static theme trees ──────────────────────────────────────

        xdg.configFile."rofi/colors".source    = "${self}/files/colors";
        xdg.configFile."rofi/images".source    = "${self}/files/images";
        xdg.configFile."rofi/launchers".source = "${self}/files/launchers";
        xdg.configFile."rofi/powermenu".source = "${self}/files/powermenu";
        xdg.configFile."rofi/scripts".source   = "${self}/files/scripts";
      }

      # ── optional font installation ──────────────────────────────────────────

      (mkIf cfg.installFonts {
        home.file.".local/share/fonts/rofi-adi1090x".source = "${self}/fonts";
        fonts.fontconfig.enable = mkDefault true;
      })
    ]
  );
}
