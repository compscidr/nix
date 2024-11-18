{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    arp-scan
  ]
}
