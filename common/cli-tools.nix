{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    btop       # resource monitor
    # btop++   # doesn't exist on nix
    htop       # interactive process viewer
    lm-sensors # insights into cpu temp, other sensors
    wget       # alternative to curl
    sqlite3    # useful for dev work
  ];
}
