{ config, pkgs, lib, ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/boot.nix
    ../../modules/nix-settings.nix
    ../../modules/locale.nix
    ../../modules/networking.nix
    ../../modules/bluetooth.nix
    ../../modules/graphics.nix
    ../../modules/audio.nix
    ../../modules/desktop.nix
    ../../modules/profiles/desktop-hyprland.nix
    ../../modules/fonts.nix
    ../../modules/users.nix
    ../../modules/power.nix
    ../../modules/packages.nix
  ];

  services.spice-vdagentd.enable = true;
  networking.hostName = "kaf-vm";

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  system.stateVersion = "25.11";
}
