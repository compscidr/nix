{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nano
  ];

  programs.nano = {
    enable = true;
    nanorc = "''
      set linenumbers true
      set guidestripe 80
    ''";
    syntaxHighlight = true;
  };
}
