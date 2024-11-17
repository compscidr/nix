{ pkgs, ... }:
{
  imports = [
    ./1password.nix
  ];

  home.packages = with pkgs; [
    pkgs._1password-gui
  ];

  home.stateVersion = "24.05";

}
