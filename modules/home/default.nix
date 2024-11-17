{ pkgs, ... }:
{
  imports = [
    ./git.nix
  ];

  home.packages = with pkgs; [
    pkgs._1password
  ];
}
