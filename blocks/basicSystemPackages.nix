{ pkgs, lib, ... }:
{
  nixpkgs.config.allowUnfree = lib.mkForce true;
  environment.systemPackages = with pkgs; [
    vim 
    wget
    curl
    git
    zip
    xz
    unzip
    p7zip
  ];
}
