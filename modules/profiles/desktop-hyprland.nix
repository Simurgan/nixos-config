{ config, pkgs, lib, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  services.greetd = {
    enable = true;
    settings.default_session = {
      command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd Hyprland";
      user = "greeter";
    };
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
