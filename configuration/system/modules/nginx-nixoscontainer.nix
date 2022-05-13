{ ... }:
{
  containers.browser = {
    config = { config, pkgs, ... }: {
      imports = [ ./nginx.nix ];
    };
  };
}
