{
  description = "Shinonome Yuugata's Personal NixOS Configutration";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR"; # read https://github.com/nix-community/NUR for how to use this.
    shinonome-nur.url = "github:YuugataShinonome/nur";
    wezterm.url = "github:wez/wezterm?dir=nix";
    
    # other config files
    clash-profile = {
      url = "git+ssh://git@github.com/YuugataShinonome/clash-profile.git?ref=master&shallow=1";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }@inputs: {
    nixosConfigurations.shinonome-laptop2 = let 
      system = "x86_64-linux";
      pkgs-unstable = import nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
      };
    in nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = {
        inherit pkgs-unstable;
        inherit inputs;
      };
      modules = [
        ./hosts/shinonome-laptop2
      ];
    };
  };
}
