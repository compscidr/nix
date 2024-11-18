{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    btop         # resource monitor
    # btop++     # doesn't exist on nix
    htop         # interactive process viewer
    # lm-sensors # doesn't exist on nixinsights into cpu temp, other sensors
    wget         # alternative to curl
    sqlite3      # useful for dev work
    cheat        # interactive cheatsheets on the cli
  ];
}
