{ config, pkgs, ... }:

{
  # Import modules that manage individual applications that should
  # be managed through home-manager
  imports = [
    ./bash
    ./direnv
    ./git
    ./kitty
    ./nvim
    ./session
    ./xsession
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "pedro";
  home.homeDirectory = "/home/pedro";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    rofi
    feh
  ];

  xdg.dataFile.wallpaper = {
    source = ./wallpapers/wallpaper.png;
    target = "wallpaper.png";
  };
}
