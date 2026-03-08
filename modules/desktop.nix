{ config, pkgs, lib, ... }:

{
  security.polkit.enable = true;
  services.libinput.enable = true;
  services.dbus.enable = true;

  programs.dconf.enable = true;

  programs.nix-ld.enable = true;

  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
}
