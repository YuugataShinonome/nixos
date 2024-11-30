
{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ../../modules/basicSystemPackages.nix
      ../../modules/desktopGnome.nix
      ../../modules/i18nChinese.nix
      ../../modules/networkUtils.nix
      ../../modules/proxyMihomo.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  networking.hostName = "shinonome-laptop2"; 
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Shanghai";
  i18n.defaultLocale = "en_US.UTF-8";

  users.users.shinonome = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
    ];
  };

  system.stateVersion = "24.11";
}

