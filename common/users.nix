{ config, pkgs, lib, ... }:
{
  opnix = {
    environmentFile = "/etc/opnix.env";
    secrets = {
      secret.source = ''
        jason:{{ op://Infrastructure/System Account?attribute=password }}"
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
    passwordFile = config.opnix.secrets.secret.path;
  };
}
