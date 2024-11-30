{ pkgs, ... }:

{
  users.users.shinonome = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
      fastfetch
      just
    ];
  };
}
