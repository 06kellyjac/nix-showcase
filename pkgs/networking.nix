{ runCommand, curl }:

runCommand "networking" {
  buildInputs = [ curl ];
} ''
  ls -alh /
  ls -alh /nix/store
  echo hello from sandbox
  curl --version
  curl https://example.com
''

# runCommand "networking" {
#   buildInputs = [ curl ];
#   outputHashAlg = "sha256";
#   outputHash = "sha256-6x+xfGX7WJsNU1YPUlH3T56bJDR43Laz6nm142RJyNk=";
# } ''
#   curl -k -v https://example.com > $out
# ''
