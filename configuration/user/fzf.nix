{ pkgs, ... }:
{
  programs.fzf = {
    enable = true;
    defaultCommand = "fd --type f";
    fileWidgetCommand = "fd --type f";
    fileWidgetOptions = [ "--preview-window 'right:60%'" "--preview 'bat --color=always --style=header,grid --line-range :300 {}'" ];
    changeDirWidgetCommand = "fd --type d";
  };

  home.packages = with pkgs; [
    fd
    bat
  ];
}
