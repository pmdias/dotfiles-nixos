{ config, pkgs, ... }:
let
  colorScheme = import ../themes/tokyonight/colorscheme.nix;
in {
  xsession = {
    enable = true;

    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
      config = {
        terminal = "kitty";
        modifier = "Mod4";
        window.titlebar = false;
	gaps = { inner = 10; outer = 0; };
	bars = [];
	colors = {
          focused = {
	    background = "${colorScheme.terminal.background}";
	    border = "${colorScheme.base_colors.red}";
	    childBorder = "${colorScheme.base_colors.red}";
	    indicator = "${colorScheme.base_colors.red}";
	    text = "${colorScheme.terminal.foreground}";
	  };
	};
      };
      extraConfig = ''
        exec --no-startup-id feh --bg-scale ${config.xdg.dataHome}/wallpaper.png
      '';
    };
  };
}
