{
  description = "Nixos modules utilities";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: {
    nixosModules = {
      home-merger = ./home-merger.nix;
      allow-unfree = ./allow-unfree.nix;
    };
  };
}
