{
  description = "NixOS configuration and home-manager configurations";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    opnix = {
      url = "github:zvictor/opnix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { home-manager, nixpkgs, opnix, ... }:
  {
    nixosConfigurations.cube = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        opnix.nixosModules.default
        ./machines/cube/configuration.nix
        ./common/users.nix
        home-manager.nixosModules.home-manager {
          home-manager.useUserPackages = true;
          home-manager.users.jason = {
            imports = [
              ./modules/home/default.nix
              ./modules/home/gui.nix
            ];
            
            home.stateVersion = "24.05";
          };
        }
      ];
    };
  };
}
