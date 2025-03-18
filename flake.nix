{
  description = "NixOS configuration with Zen Browser";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

  zen-browser.url = "github:youwen5/zen-browser-flake";
  };

  outputs = { self, nixpkgs, zen-browser  }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];

      specialArgs = {
        zen = zen-browser.packages.x86_64-linux.default;
      };
    };
  };
}
