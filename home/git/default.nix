{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userEmail = "pedrodias.miguel@gmail.com";
    userName = "Pedro Dias";

    extraConfig = {
      init = {
        defaultBranch = "main";
      };
    };
  };
}
