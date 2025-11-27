# /qompassai/hyprland/flake.nix
# Qompass AI Hyprland Flake
# Copyright (C) 2025 Qompass AI, All rights reserved
####################################################
# nixos-rebuild switch --flake .#x86_64-linux --argstr username $USER
{
  description = "Qompass AI Hyprland Nix Flake";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-schemas.url = "https://flakehub.com/f/DeterminateSystems/flake-schemas/*";
    hyprland.url = "github:hyprwm/Hyprland";
    nur.url = "github:nix-community/NUR";
    nur.inputs.nixpkgs.follows = "nixpkgs";
    xdg-desktop-portal-hyprland.url = "github:hyprwm/xdg-desktop-portal-hyprland";
    xdg-desktop-portal-hyprland.inputs.nixpkgs.follows = "nixpkgs";
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
            hypridle
            hyprlock
            jq
            wget
            nixpkgs-fmt
            xdg-desktop-portal-hyprland
          ];
        };
      });
      nixosConfigurations = {
        x86_64-linux = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            hyprland.nixosModules.default
            ({ config, pkgs, username, ... }: {
              users.users.${username} = {
                isNormalUser = true;
                extraGroups = [ "wheel" "networkmanager" ];
                home = "/home/${username}";
              };
              programs.hyprland.enable = true;
              programs.hyprland.package = pkgs.hyprland;
              programs.hyprland.portalPackage = pkgs.xdg-desktop-portal-hyprland;
              programs.hyprlock.enable = true;
              programs.hyprland.xwayland.enable = true;
              programs.hyprland.withUWSM = true;
              environment.sessionVariables = {
                NIXOS_OZONE_WL = "1";
                XDG_CONFIG_HOME = "${HOME}/.config";
                XDG_DATA_HOME = "${HOME}/.local/share";
                XDG_CACHE_HOME = "${HOME}/.cache";
                XDG_STATE_HOME = "${HOME}/.local/state";
                QT_QPA_PLATFORM = "wayland;xcb";
              };
            })
          ];
          specialArgs = { inherit hyprland username; };
        };
      };
    };
}
