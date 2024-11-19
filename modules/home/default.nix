{ pkgs, ... }:
{
  imports = [
    ./git.nix
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

  xdg.configFile."tmux/tmux.conf".source = ../../dotfiles/tmux/tmux.conf;           
  xdg.configFile."tmux/.tmux.conf.local".source = ../../dotfiles/tmux/.tmux.conf.local;

  home.file.".bashrc".text = ''
    if command -v fzf-share >/dev/null; then
      source "$(fzf-share)/key-bindings.bash"
      source "$(fzf-share)/completion.bash"
    fi
  '';

}
