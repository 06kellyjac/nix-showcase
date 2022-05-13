{ ... }:
{
  virtualisation.oci-containers.containers = {
    nginx = {
      image = "nginx";
      # ports = [ "127.0.0.1:3010:3010" ];
    };
  };
}
