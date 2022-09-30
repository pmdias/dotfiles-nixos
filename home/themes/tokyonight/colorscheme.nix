rec {
  base_colors = {
    red = "#f7768e";
    orange = "#ff9e64";
    yellow = "#e0af68";
    pure_green = "#9ece6a";
    green = "#73daca";
    blue_green = "#b4f9f8";
    cyan = "#2ac3de";
    gray_blue = "#7dcfff";
    blue = "#7aa2f7";
    magenta = "#bb9af7";
    white = "#c0caf5";
    light_gray = "#a9b1d6";
    gray = "#9aa5ce";
    gray_caramel = "#cfc9c2";
    dark_gray = "#565f89";
    black = "#414868";
    dark_black = "#24283b";
    darker_black = "#1a1b26";
  };

  terminal = {
    foreground = base_colors.light_gray;
    background = base_colors.darker_black;

    color0 = base_colors.black;
    color8 = base_colors.black;

    color1 = base_colors.red;
    color9 = base_colors.red;

    color2 = base_colors.green;
    color10 = base_colors.green;

    color3 = base_colors.yellow;
    color11 = base_colors.yellow;

    color4 = base_colors.blue;
    color12 = base_colors.blue;

    color5 = base_colors.magenta;
    color13 = base_colors.magenta;

    color6 = base_colors.cyan;
    color14 = base_colors.cyan;

    color7 =  base_colors.white;
    color15 =  base_colors.white;
  };
}
