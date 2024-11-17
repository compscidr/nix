{ pkgs, ... }:
{
  imports = [
    ./home/git.nix
  ];

  home.packages = with pkgs; [

  ]

  home.stateVersion = "24.05";

  home.sessionVariables = {
    EDITOR = "nano";
  };
}
