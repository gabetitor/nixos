{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ...}@inputs: {
    # Please replace my-nixos with your hostname
    nixosConfigurations.proto-nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs;
        username = "mutate";
      };
      modules = [
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        ./configuration.nix
      ];
    };
  };
}
