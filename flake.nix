{
  description = "Omer's NixOS system configurations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ... }:
    let
      mkHost = { hostname, system ? "x86_64-linux" }:
        nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/${hostname}
          ];
        };
    in {
      nixosConfigurations = {
        vm = mkHost { hostname = "vm"; };

        # later:
        # laptop = mkHost { hostname = "laptop"; };
        # desktop = mkHost { hostname = "desktop"; };
      };
    };
}
