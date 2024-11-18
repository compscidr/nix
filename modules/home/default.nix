{ pkgs, ... }:
{
  imports = [
    ./git.nix
    ./nano.nix
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
