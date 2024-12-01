
{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ../../blocks/basicSystemPackages.nix
      ../../blocks/desktopGnome.nix
      ../../blocks/i18nChinese.nix
      ../../blocks/networkUtils.nix
      ../../blocks/proxyMihomo.nix
      ../../blocks/vmDistrobox.nix
      ../../blocks/vmLibvirt.nix
      ../../blocks/autoGC.nix
      ../../blocks/users/shinonome.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "shinonome-laptop2"; 
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Shanghai";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.supportedLocales = [
    "en_US.UTF-8/UTF-8"
  ];

  system.stateVersion = "24.11";
}

