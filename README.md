# Nix configurations for my machines

## Bootstrapping Procedures
- Install nixos using a live cd
- Update the `/etc/nixos/configuration.nix` to add `git`
- Run `nixos-rebuild switch`
- clone this repo, change to the directory it is cloned to
- Run `nixos-rebuild switch --upgrade --flake '.#cube' --use-remote-sudo`

## Guides and Inspirations
- https://www.return12.net/posts/bootstrapping-nixos/
