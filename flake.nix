{
  description = "Phenix shared dev shells";

  inputs = {
    phenix-pins.url = "github:matthis-k/phenix-pins";
    phenix-packages.url = "github:matthis-k/phenix-packages";
    nixpkgs.follows = "phenix-pins/nixpkgs";
  };

  outputs = inputs: {
    devShells.x86_64-linux.default = (import inputs.nixpkgs {
      system = "x86_64-linux";
    }).mkShell { };

    devShells.aarch64-linux.default = (import inputs.nixpkgs {
      system = "aarch64-linux";
    }).mkShell { };
  };
}
