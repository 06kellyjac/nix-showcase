{ pkgs ? import <nixpkgs> {} }: {
  # go-hello =
  rust-hello = pkgs.callPackage ./rust-hello.nix { };
}
