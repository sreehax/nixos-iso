{
  description = "NixOS with bcachefs";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs =
    { self, nixpkgs }@inputs:
    {
      nixosConfigurations = {
        bcachefs = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            "${nixpkgs}/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix"
            ./configuration.nix
          ];
        };
      };
      packages.x86_64-linux.default = self.nixosConfigurations.bcachefs.config.system.build.isoImage;
    };
}
