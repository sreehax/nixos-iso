# NixOS ISO with bcachefs
This project lets you easily build a NixOS ISO with bcachefs support. It can easily be modified to change the configuration to your liking.

If you don't want to build it yourself, just download the ISO from releases. It should be the same (byte for byte) as the ISO you build.

## Prerequisites
All you need to build this is an x86_64 NixOS system or any x86_64 Linux system with nix installed.

Installing nix on your system is [very simple](https://zero-to-nix.com/start/install).

## Building the ISO
You can either clone this repository and issue `nix build`, or you can run this command from anywhere you have write access: `nix build github:sreehax/nixos-iso`.

### Updating
This repository is locked to a specific revision of nixpkgs, as seen in `flake.lock`. If you want to build it with the latest unstable nixpkgs, just issue `nix flake update` in this directory before building or run `nix build --override-input nixpkgs nixpkgs/nixos-unstable github:sreehax/nixos-iso` for a one-off solution.
