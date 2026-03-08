{
  description = "Omer's NixOS system configurations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ... }:
    let
      mkHost = { hostname, system }:
        nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/${hostname}
          ];
        };
    in {
      nixosConfigurations = {
        vm = mkHost {
          hostname = "vm";
          system = "x86_64-linux";
        };

        # later:
        # laptop = mkHost { hostname = "laptop"; system = "x86_64-linux"; };
        # desktop = mkHost { hostname = "desktop"; system = "x86_64-linux"; };
      };
    };
}
