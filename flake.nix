{
  description = "NixOS flake for a mad scientist";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

   home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ...}@inputs:
    let
      systems = [
        "x86_64-linux"
        "x86_64-darwin"
        "aarch64-linux"
        "aarch64-darwin"
      ];

      # Anonymous function, has inputs, waiting to be fed a function
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in {
    nixosConfigurations.steiner = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      # may not need vvvv
      specialArgs = { inherit inputs;};
      modules = [
        ./hosts/steiner/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {inherit inputs;};
            users.mutate = ./home/mutate;
          };
        }
      ];
    };

    devShells = forAllSystems (
      system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in {
          default = pkgs.mkShell {
           packages = with pkgs; [
            nixd
           ];
          };
        }
    );
  };
}
