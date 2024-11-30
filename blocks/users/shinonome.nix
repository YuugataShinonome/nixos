{ inputs, pkgs, ... }:

{
  users.users.shinonome = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
      fastfetch
      just
      htop
      zsh
      
      zulu
      zulu8
      zulu17
    ];
  };

  fonts.packages = with pkgs; [
    fira-code
    fira-code-symbols
    meslo-lgs-nf
  ];
}
