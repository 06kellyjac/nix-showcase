{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # inputs.nix-ld.url = "github:Mic92/nix-ld";
    # inputs.nix-ld.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, nix-ld, ... }: {
    nixosConfigurations.myhostname = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        # nix-ld.nixosModules.nix-ld
        # ./configuration.nix
      ];
    };
  };
}
