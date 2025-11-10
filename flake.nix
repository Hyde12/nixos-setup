{
  description = "flake for rose-pine-cursor";

  inputs = {
    # nix stuff
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    utils.url = "github:numtide/flake-utils";
    
    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Spicetify
    spicetify-nix = { 
	url = "github:Gerg-L/spicetify-nix";
	inputs.nixpkgs.follows = "nixpkgs";
    };

    # hyprland    
    hyprland.url = "github:hyprwm/hyprland?ref=v0.36.0";
    hyprlang = {
      url = "github:hyprwm/hyprlang";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Cursor
    rose-pine-hyprcursor = {
      url = "github:ndom91/rose-pine-hyprcursor";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.hyprlang.follows = "hyprland/hyprlang";
    };

    # astal and ags (bar)
    astal.url = "github:aylur/astal";
    ags.url = "github:aylur/ags";

    # Quickshell Theme
    dgop = {
      url = "github:AvengeMedia/dgop";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dms-cli = {
      url = "github:AvengeMedia/danklinux";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dankMaterialShell = {
      url = "github:AvengeMedia/DankMaterialShell";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.dgop.follows = "dgop";
      inputs.dms-cli.follows = "dms-cli";
    };
  };
  outputs =
    {
      self,
      nixpkgs,
      utils,
      home-manager,
      hyprland,
      hyprlang,
      rose-pine-hyprcursor,
      dankMaterialShell,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        default = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            #/etc/nixos/configuration.nix
            inputs.home-manager.nixosModules.default
            ./hosts/default/configuration.nix
          ];
        };
      };
    };
}
