{ config, pkgs, lib, ... }:

{
  users.users.simurgan = {
    isNormalUser = true;
    description = "Simurgan";
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "audio"
    ];
    initialPassword = "changeme";
  };

  security.sudo.enable = true;
}
