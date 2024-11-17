{ config, pkgs, lib, ... }:
{
  opnix = {
    environmentFile = "/etc/opnix.env";
    secrets = {
      secret.source = ''
        jason:{{ op://Infrastructure/System Account?attribute=text }}"
      '';
      secret.path = "/etc/passwd/jason";
    };
  };
  
  users.mutableUsers = false;
  users.users.jason = {
    uid = 1000;
    isNormalUser = true;
    description = "Jason Ernst";
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    hashedPasswordFile = config.opnix.secrets.secret.path;
  };
}
