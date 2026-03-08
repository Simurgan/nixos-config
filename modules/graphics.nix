{ config, pkgs, lib, ... }:

{
  hardware.graphics = {
    enable = lib.mkDefault true;
    enable32Bit = lib.mkDefault false;
  };
}
