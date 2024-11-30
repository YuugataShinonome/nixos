{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
    gnome-contacts
    gnome-maps
    gnome-weather
    cheese
    epiphany
    geary
    tali
    iagno
    hitori
    atomix
  ]); 

  services.printing.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  programs.firefox.enable = true;
}
