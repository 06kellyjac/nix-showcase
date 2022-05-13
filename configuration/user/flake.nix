{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { home-manager, ... }:
    let
      system = "x86_64-linux";
      username = "bob";
    in {
      homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
        configuration = import ./home.nix;

        inherit system username;
        homeDirectory = "/home/${username}";
        stateVersion = "21.11";
      };
    };
}
