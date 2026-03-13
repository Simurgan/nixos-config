{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    file
    zstd
    unzip
    zip
    pciutils
    usbutils
    lshw
    gcc
    gnumake
    cmake
    pkg-config
  ];

  # Optional later
  # services.openssh.enable = true;
  # services.printing.enable = true;
}
