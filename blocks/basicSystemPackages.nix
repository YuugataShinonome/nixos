{ pkgs, lib, ... }:
{
  nixpkgs.config.allowUnfree = lib.mkForce true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
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
