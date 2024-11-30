{
  description = "Shinonome Yuugata's Personal NixOS Configutration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
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
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "backup";

          home-manager.users.shinonome = import ./users/shinonome;
        }
      ];
    };
  };
}
