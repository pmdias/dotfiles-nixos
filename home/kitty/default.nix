{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    settings = {
      font_size = 9;
    };
  };
}
