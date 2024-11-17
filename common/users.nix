{ config, pkgs, ... }:

{
  users.mutableUsers = false;
  users.users.jason = {
    uid = 1000;
    isNormalUser = true;
    description = "Jason Ernst";
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };
}
