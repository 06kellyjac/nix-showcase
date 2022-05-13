{ config, pkgs, lib, ... }:
{
  imports = [ ./fzf.nix ];

  home.packages = with pkgs; [
    # jq
  ];
  # programs.jq.enable = true;
  # programs.nix-index.enable = true;

  # home.username = "bob";
  # home.homeDirectory = "/home/bob";
  # home.stateVersion = "21.11";
}
