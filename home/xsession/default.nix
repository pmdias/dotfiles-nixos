{ pkgs, ... }:

{
  xsession = {
    enable = true;

    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
      config = {
        window.titlebar = false;
      };
    };
  };
}
