{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;

    # Setup system in a way that all references to vim or vi or vimdiff
    # end up being mapped to the neovim installation.
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };
}
