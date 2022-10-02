{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;

    # Setup system in a way that all references to vim or vi or vimdiff
    # end up being mapped to the neovim installation.
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    # Plugins installation
    plugins = with pkgs.vimPlugins; [
      # General and baseline
      plenary-nvim

      # Appearance
      tokyonight-nvim

      # Status line
      lualine-nvim
      nvim-web-devicons
    ];

    # Load the lua configuration
    extraConfig = ''
      luafile ${builtins.toString ./init_lua.lua}
    '';
  };

  # Move the neovim lua configuration to its final place
  xdg.configFile = {
    "nvim/lua" = {
      source = ./lua;
      recursive = true;
    };
    "nvim/init_lua.lua".source  = ./init_lua.lua;
  };
}
