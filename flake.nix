# flake.nix

{
  description = "test";

  inputs =
    {
      nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
      nodejs.url = "github:nixos/nixpkgs/44881e03af1c730cbb1d72a4d41274a2c957813a";
      rust-analyzer.url = "github:nixos/nixpkgs/53a702e155d4d87cb908524ddb52db36aed98d03";
      go-1-22-3.url = "github:nixos/nixpkgs/a9858885e197f984d92d7fe64e9fff6b2e488d40";
    };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.x86_64-linux.default =
        pkgs.mkShell
          {
            nativeBuildInputs = with pkgs; [
              nodejs
              inputs.nodejs.legacyPackages.${system}.nodejs_21
              inputs.rust-analyzer.legacyPackages.${system}.rust-analyzer
              inputs.go-1-22-3.legacyPackages.${system}.go
            ];
          };
    };
}
