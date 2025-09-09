# /qompassai/hyprland/flake.nix
# Qompass AI Hyprland Flake
# Copyright (C) 2025 Qompass AI, All rights reserved
####################################################
{
  description = "Qompass AI Hyprland Nix Flake";
  inputs = {
    flake-schemas.url = "https://flakehub.com/f/DeterminateSystems/flake-schemas/*";
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/*";
    hyprland.url = "github:hyprwm/Hyprland";
    nur.url = "github:nix-community/NUR";
    nur.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = { self, flake-schemas, nixpkgs, hyprland, nur, ... }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" ];
      forEachSupportedSystem = f: nixpkgs.lib.genAttrs supportedSystems (system: f {
        pkgs = import nixpkgs { inherit system; };
      });
    in
    {
      schemas = flake-schemas.schemas;
      devShells = forEachSupportedSystem ({ pkgs }: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            curl
            git
            jq
            wget
            nixpkgs-fmt
          ];
        };
      });
      nixosConfigurations = {
        primo = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            hyprland.nixosModules.default
            ({ config, pkgs, ... }: {
              programs.hyprland.enable = true;
              environment.etc."skel/.config/hypr/hyprland.conf".source = ./hyprland.conf;
              environment.etc."skel/.config/hypr/hypridle.conf".source = ./hypridle.conf;
              environment.etc."skel/.config/hypr/hypr.d".source = ./hypr.d;
              users.users.phaedrus = {
                isNormalUser = true;
                extraGroups = [ "wheel" "networkmanager" ];
                home = "/home/phaedrus";
              };
              environment.sessionVariables.NIXOS_OZONE_WL = "1";
            })
          ];
          specialArgs = { inherit hyprland; };
        };
      };
    };
}
