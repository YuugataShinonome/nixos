{ inputs, pkgs, ... }:

{
  users.users.shinonome = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      tree
      fastfetch
      just
      htop
      
      zulu
      zulu8
      zulu17

      veracrypt

      jetbrains.idea-community
    ];
  };
  
  programs.zsh.enable = true;

  fonts.packages = with pkgs; [
    fira-code
    fira-code-symbols
    meslo-lgs-nf
  ];
}
