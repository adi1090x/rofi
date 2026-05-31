{
  description =
    "A huge collection of Rofi themes, applets, launchers & powermenus";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages.default = pkgs.stdenv.mkDerivation {
          pname = "adi1090x-rofi-themes";
          version = "1.7.4";

          src = ./.;

          nativeBuildInputs = with pkgs; [ rofi ];

          propagatedBuildInputs = with pkgs; [
            # Core dependencies
            rofi
            # Optional runtime dependencies for full functionality
            pkexec
            acpi
            mpd
            mpc
            maim
            xorg.xrandr
            dunst
            xclip
            alsa-utils # for amixer
            pavucontrol
          ];

          # Handle fonts separately for proper font cache regeneration
          fonts = with pkgs;
            [
              (nerdfonts.override {
                fonts = [ "Iosevka" "JetBrainsMono" "Mononoki" ];
              })
            ];

          installPhase = ''
            # Create target directories
            mkdir -p $out/share/rofi

            # Copy everything except fonts to rofi themes directory
            cp -r applets bin colors launchers powermenu scripts $out/share/rofi/

            # Make all scripts executable
            find $out/share/rofi -type f -name \"*.sh\" -exec chmod +x {} \\;

            # Create wrapper scripts in bin for easy access
            mkdir -p $out/bin
            for script in scripts/*; do
              name=$(basename \"$script\")
              cat > \"$out/bin/$name\" << EOF
            #!/bin/sh
            exec $out/share/rofi/scripts/$name \"\\$@\"
            EOF
              chmod +x \"$out/bin/$name\"
            done
          '';

          meta = with pkgs.lib; {
            description =
              "A huge collection of Rofi themes, applets, launchers & powermenus";
            homepage = "https://github.com/adi1090x/rofi";
            license = licenses.gpl3;
            platforms = platforms.linux;
            maintainers = [ ];
          };
        };

        # Overlay for making the package available system-wide
        overlays.default = final: prev: {
          adi1090x-rofi-themes = self.packages.${system}.default;
        };
      })
    // {
      # -----------------------------------------------------------------------
      # Home Manager module (system-independent)
      #
      # Import in your home-manager config:
      #
      #   inputs.rofi-themes.url = "github:adi1090x/rofi";
      #
      #   home-manager.users.<name> = {
      #     imports = [ inputs.rofi-themes.homeManagerModules.default ];
      #     programs.rofi-adi1090x.enable = true;
      #   };
      # -----------------------------------------------------------------------
      homeManagerModules.default = import ./hm-module.nix { inherit self; };

      # Convenience alias used by some home-manager setups
      homeManagerModule = self.homeManagerModules.default;
    };
}
