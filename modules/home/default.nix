{ pkgs, ... }:
{
  imports = [
    ./git.nix
    # ./nano.nix # this is broken
  ];

  home.packages = with pkgs; [
    pkgs._1password
  ];

  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host *
          IdentityAgent "~/.1password/agent.sock"
    '';
  };
}
