{
  pkgs,
  lib,
  inputs,
  ...
}:
{
  # bcachefs support
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.supportedFilesystems = lib.mkForce [
    "bcachefs"
    "btrfs"
    "reiserfs"
    "vfat"
    "f2fs"
    "xfs"
    "ntfs"
    "cifs"
  ];

  # Localization
  i18n.defaultLocale = "en_US.UTF-8";

  # Choose the system packages you want installed here.
  environment.systemPackages = with pkgs; [
    neovim
    fastfetch
    man-pages
    man-pages-posix
    keyutils # for bcachefs encryption
    zstd
    gptfdisk
    lz4
    zstd
  ];

  # supports things like `nix run n#bash`
  nix = {
    package = pkgs.lix;
    registry = {
      n.flake = inputs.nixpkgs;
    };
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
    settings.auto-optimise-store = true;
  };
  documentation.dev.enable = true;
}
