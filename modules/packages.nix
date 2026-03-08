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
  ];

  # Optional later
  # services.openssh.enable = true;
  # services.printing.enable = true;
}
