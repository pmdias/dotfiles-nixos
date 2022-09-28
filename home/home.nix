{ config, pkgs, ... }:

{
  # Import modules that manage individual applications that should
  # be managed through home-manager
  imports = [
    ./direnv
    ./git
    ./kitty
    ./nvim
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

  # Session variables
  home.sessionVariables = {
    EDITOR = "vim";
  };

  programs.bash = {
    enable = true;

    shellAliases = {
      ll = "ls -lh --color=auto";
    };
  };
}