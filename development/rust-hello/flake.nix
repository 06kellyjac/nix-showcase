{
  outputs = { self, nixpkgs }: let
    forAllSystems = systems: f: nixpkgs.lib.genAttrs systems (system: f system);
  in {
    # devShells.x86_64-linux.default = import ./shell.nix { pkgs = nixpkgs.legacyPackages.x86_64-linux; };
    # devShells.x86_64-darwin.default = import ./shell.nix { pkgs = nixpkgs.legacyPackages.x86_64-darwin; };
    # devShells.aarch64-darwin.default = import ./shell.nix { pkgs = nixpkgs.legacyPackages.aarch64-darwin; };

    devShells = forAllSystems [ "x86_64-linux" "x86_64-darwin" "aarch64-darwin" ] (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      default = import ./shell.nix { inherit pkgs; };
    });
  };
}
