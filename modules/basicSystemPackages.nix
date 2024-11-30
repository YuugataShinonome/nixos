{ pkgs, ... }:
{
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
