{ pkgs, ... }: 
{
  # https://nixos.wiki/wiki/Visual_Studio_Code#NixOS
  environment.systemPackages = with pkgs; [ vscode ];
}
