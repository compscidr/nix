{
  description = "NixOS configuration and home-manager configurations";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { home-manager, nixpkgs, ...}:
  {
    nixosConfigurations.cube = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./machines/cube/configuration.nix
        home-manager.nixosModules.home-manager {
          home-manager.useUserPackages = true;
          home-manager.users.return12 = {
            imports = [
              ./modules/home/default.nix
              ./modules/home/gui.nix
            ];
          };
        }
      ];
    };
  };
}
