{ config, pkgs, ... }:
{
  imports = [
    ./git.nix
  ];

  opnix = {
    secrets = {
      user.password = "{{ op://System Account?attribute=password }}";
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
    password = config.opnix.secrets.user.password;
  };
}
