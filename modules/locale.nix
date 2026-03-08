{ config, pkgs, lib, ... }:

{
  time.timeZone = "Europe/Istanbul";
  services.timesyncd.enable = true;

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.supportedLocales = [
    "en_US.UTF-8/UTF-8"
    "tr_TR.UTF-8/UTF-8"
  ];

  console = {
    font = "Lat2-Terminus16";
    keyMap = "trq";
  };
}
