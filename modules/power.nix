{ config, pkgs, lib, ... }:

{
  services.power-profiles-daemon.enable = true;

  # Do not enable together with power-profiles-daemon.
  # services.tlp.enable = true;
}
