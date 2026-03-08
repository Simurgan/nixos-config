{ config, pkgs, lib, ... }:

{
  security.polkit.enable = true;
  services.libinput.enable = true;

  programs.nix-ld.enable = true;

  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
}
