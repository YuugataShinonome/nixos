{ config, pkgs, ... }:

{
  home.username = "shinonome";
  home.homeDirectory = "/home/shinonome";

  home.packages = with pkgs;[
    fastfetch
    ripgrep # recursively searches directories for a regex pattern
    jq      # A lightweight and flexible command-line JSON processor
    yq-go   # yaml processor https://github.com/mikefarah/yq
    eza     # A modern replacement for ‘ls’
    fzf     # A command-line fuzzy finder
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
