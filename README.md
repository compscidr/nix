# Nix configurations for my machines

## Bootstrapping Procedures
- Install nixos using a live cd
- Update the `/etc/nixos/configuration.nix` to add `git`
- Run `nixos-rebuild switch`
- clone this repo, change to the directory it is cloned to
- Run `nixos-rebuild switch --upgrade --flake '.#<machine-name>' --use-remote-sudo`
- Sign into 1password
- Switch git repo from http -> ssh

## Guides and Inspirations
- https://www.return12.net/posts/bootstrapping-nixos/
- https://nix.dev/guides/best-practices
