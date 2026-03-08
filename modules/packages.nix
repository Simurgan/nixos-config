{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    librewolf

    curl
    wget
    file
    zstd
    unzip
    zip
    pciutils
    usbutils
    lshw

    wl-clipboard
    hyprlock
    hypridle
    grimblast
    satty
    mako

    mesa
    glxinfo
    vulkan-loader
    vulkan-tools
    libva-utils
  ];

  # Optional later
  # services.openssh.enable = true;
  # services.printing.enable = true;
}
