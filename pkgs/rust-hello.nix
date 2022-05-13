{ lib, rustPlatform }:

rustPlatform.buildRustPackage {
  pname = "rust-hello";
  version = "0.1.0";

  src = ../development/rust-hello;
  # cargoSha256 = "sha256-kYZxtiK9hnHBOMvRoHZK5kyXO9cg/gHBYuaITqKUpbE=";
  # no dependencies
  cargoVendorDir = "vendor";

  # meta = with lib; {
  #   description = "";
  #   homepage = "";
  #   changelog = "";
  #   license = with licenses; [ asl20 /* or */ mit ];
  #   maintainers = with maintainers; [ ];
  # };
}
