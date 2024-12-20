{ pkgs, ... }:
{
  imports = [
    ./firefox.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    pkgs._1password-gui
  ];
}
