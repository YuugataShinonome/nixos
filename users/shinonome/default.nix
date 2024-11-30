{ config, pkgs, ... }:

{
  home.username = "shinonome";
  home.homeDirectory = "/home/shinonome";

  home.packages = with pkgs;[
    fastfetch
    ripgrep 
    jq      
    yq-go   
    eza     # A modern replacement for ‘ls’
    fzf     
  ];

  programs.git = {
    enable = true;
    userName = "Shinonome Yuugata";
    userEmail = "shinonomeyuugata@gmail.com";
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
