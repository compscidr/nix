{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    btop         # resource monitor
    # btop++     # doesn't exist on nix
    htop         # interactive process viewer
    # lm-sensors # doesn't exist on nix. insights into cpu temp, other sensors
    wget         # alternative to curl
    # sqlite3    # doesn't exist on nix. useful for dev work
    cheat        # interactive cheatsheets on the cli
    xclip        # access the x clipbopard from cli
    fish         # alternative shell
    powerline    # statusline / prompt utility
    tmux         # terminal multiplexer
    byobu        # window manager and terminal multiplexer
    neofetch     # system info script
    screen       # multiplexing terminal
  ];

  programs.nano = {
    enable = true;
    nanorc = ''
      set linenumbers true
      set guidestripe 80
    '';
    syntaxHighlight = true;
  };

  xdg.configFile."tmux/tmux.conf".source = ./dotfiles/tmux/tmux.conf;
  xdg.configFile."tmux/.tmux.conf.local".source = ./dotfiles/tmux/.tmux.conf.local
}
