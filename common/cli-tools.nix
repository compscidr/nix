{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    btop         # resource monitor
    # btop++     # doesn't exist on nix
    htop         # interactive process viewer
    # lm-sensors # doesn't exist on nix. insights into cpu temp, other sensors
    wget         # alternative to curl
    # sqlite3    # doesn't exist on nix. useful for dev work
    cheat        # interactive cheatsheets on the cli
    xclip        # access the x clipbopard from cli
  ];
}
