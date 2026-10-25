{
  description = "NixOS flake for a mad scientist";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

   home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs,
    nixpkgs-unstable,
    home-manager, ...}@inputs:
    let
      system = "x86_64-linux";
      systems = [
        "x86_64-linux"
        "x86_64-darwin"
        "aarch64-linux"
        "aarch64-darwin"
      ];

      pkgs-unstable = import nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
      };
      # Anonymous function, has inputs, waiting to be fed a function
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in {
    nixosConfigurations.steiner = nixpkgs.lib.nixosSystem {
      inherit system;

      specialArgs = {
       inherit inputs;
       inherit pkgs-unstable;
      };

      modules = [
        ./hosts/steiner/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {
              inherit inputs;
              inherit pkgs-unstable;
            };
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
