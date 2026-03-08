{ config, pkgs, lib, ... }:

{
  networking.hostName = "kaf-vm";
  networking.networkmanager.enable = true;
}
