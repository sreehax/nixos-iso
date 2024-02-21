({ pkgs, lib, ... }: {
  # bcachefs support
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.supportedFilesystems = lib.mkForce [ "bcachefs" "btrfs" "reiserfs" "vfat" "f2fs" "xfs" "ntfs" "cifs"];

  # Choose the system packages you want installed here.
  environment.systemPackages = with pkgs; [
    neovim
    fastfetch
    man-pages
    man-pages-posix
  ];
})
