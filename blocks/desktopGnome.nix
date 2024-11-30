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
    gnome-clocks
    gnome-software
    gnome-user-docs
    gnome-backgrounds
    gnome-characters
    orca
    cheese
    epiphany
    geary
    tali
    iagno
    hitori
    atomix
    yelp
    totem
    simple-scan
  ]); 

  services.printing.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  programs.firefox.enable = true;

  services.flatpak.enable = true;

  qt = {
    enable = true;
    platformTheme = "gnome";
    style = "adwaita";
  };
}
