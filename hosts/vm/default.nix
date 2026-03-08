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
    ../../modules/fonts.nix
    ../../modules/users.nix
    ../../modules/power.nix
    ../../modules/packages.nix
  ];

  networking.hostName = "kaf-vm";

  system.stateVersion = "25.11";
}
