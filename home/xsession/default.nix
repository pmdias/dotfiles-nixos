{ pkgs, ... }:

{
  xsession = {
    enable = true;

    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
      config = {
        terminal = "kitty";
        modifier = "Mod4";
        window.titlebar = false;
      };
    };
  };
}
