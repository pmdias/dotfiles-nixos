{ pkgs, ... }:

{
  programs.bash = {
    enable = true;

    shellAliases = {
      ll = "ls -lh --color=auto";
    };
  };
}
