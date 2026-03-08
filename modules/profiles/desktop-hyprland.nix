{ config, pkgs, lib, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
    ];
  };

  hardware.graphics.enable32Bit = true;

  environment.systemPackages = with pkgs; [
    librewolf
    wl-clipboard
    hyprlock
    hypridle
    grimblast
    satty
    mako

    mesa
    mesa-demos
    vulkan-loader
    vulkan-tools
    libva-utils
  ];
}
