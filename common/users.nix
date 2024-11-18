{ config, pkgs, ... }:
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
  
  # users.mutableUsers = false;
  users.users.jason = {
    isNormalUser = true;
    description = "Jason Ernst";
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    # hashedPasswordFile = config.opnix.secrets.secret.path;
    # todo: turn this back on when we figure out wtf is going wrong here
  };
}
