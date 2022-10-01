{ pkgs, ... }:
let
  colorScheme = import ../themes/tokyonight/colorscheme.nix;
in {
  services.polybar = {
    enable = true;
    package = with pkgs; polybar.override {
      i3GapsSupport = true;
      pulseSupport = true;
    };
    script = ''
      polybar bar &
    '';
    extraConfig = ''
      [bar/bar]
      monitor = HDMI-2
      enable-ipc = true
      width =  100%
      height = 28
      bottom = false

      modules-left = appmenu i3
      modules-center = title
      modules-right = keyboard date powermenu

      font-0 = "JetBrainsMono Nerd Font:style=Regular:size=10;2"
      font-1 = "JetBrainsMono Nerd Font:style=Regular:size=12;2"
      font-2 = "JetBrainsMono Nerd Font:style=Regular:size=3;2"
      font-3 = "DejaVu Sans:style=Book:size=10;2"
      font-4 = "DejaVu Sans:style=Bold:size=10;2"
      font-5 = "JetBrainsMono Nerd Font:style=Bold:size=10;2"
      background = ${colorScheme.terminal.background}
      foreground = ${colorScheme.terminal.foreground}

      [module/appmenu]
      type = custom/text

      content = " %{T2} %{T-}%{T3} %{T-}"
      content-foreground = ${colorScheme.base_colors.red}

      [module/i3]
      type = internal/i3

      label-unfocused = %index%
      label-unfocused-padding = 1

      label-focused = %index%
      label-focused-foreground = ${colorScheme.terminal.background}
      label-focused-background = ${colorScheme.base_colors.red}
      label-focused-padding = 1

      [module/title]
      type = internal/xwindow

      label = %{T4}%title%%{T-}

      [module/keyboard]
      type = internal/xkeyboard
      label-layout = %{T6}%layout%%{T-}
      label-layout-padding = 0
      label-layout-foreground = ${colorScheme.base_colors.red}

      [module/date]
      type = internal/date

      date = "  %{T4}%H:%M%{T-}  "
      date-alt = "  %{T4}%Y-%m-%d%{T-}  "

      [module/powermenu]
      type = custom/text

      content = " %{T2}⏻ %{T-}%{T3} %{T-}"
      content-background = ${colorScheme.base_colors.red}
      content-foreground = ${colorScheme.terminal.background}
      content-padding = 0
    '';
  };
}
