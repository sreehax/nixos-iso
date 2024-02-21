# NixOS ISO with bcachefs
This project lets you easily build a NixOS ISO with bcachefs support. It can easily be modified to change the configuration to your liking.

## Prerequisites
All you need to build this is an x86_64 NixOS system or any x86_64 Linux system with nix installed.

Installing nix on your system is [very simple](https://zero-to-nix.com/start/install).

## Building the ISO
You can either clone this repository and issue `nix build`, or you can run this command from anywhere you have write access: `nix build github:sreehax/nixos-iso`.

### Updating
This repository is locked to a specific revision of nixpkgs, as seen in `flake.lock`. If you want to run it with the latest unstable nixpkgs, just issue `nix flake update` in this directory before building or run `nix run --override-input nixpkgs nixpkgs/nixos-unstable` for a one-off solution.
