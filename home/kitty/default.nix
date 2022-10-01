{ pkgs, ... }:
let
  kittyBaseConfig = builtins.readFile ./kitty.conf;
  colorScheme = import ../themes/tokyonight/colorscheme.nix;
in {
  programs.kitty = {
    enable = true;
    extraConfig = ''
      ${kittyBaseConfig}

      foreground ${colorScheme.terminal.foreground}
      background ${colorScheme.terminal.background}

      color0 ${colorScheme.terminal.color0}
      color1 ${colorScheme.terminal.color1}
      color2 ${colorScheme.terminal.color2}
      color3 ${colorScheme.terminal.color3}
      color4 ${colorScheme.terminal.color4}
      color5 ${colorScheme.terminal.color5}
      color6 ${colorScheme.terminal.color6}
      color7 ${colorScheme.terminal.color7}
      color8 ${colorScheme.terminal.color8}
      color9 ${colorScheme.terminal.color9}
      color10 ${colorScheme.terminal.color10}
      color11 ${colorScheme.terminal.color11}
      color12 ${colorScheme.terminal.color12}
      color13 ${colorScheme.terminal.color13}
      color14 ${colorScheme.terminal.color14}
      color15 ${colorScheme.terminal.color15}
    '';
  };
}
