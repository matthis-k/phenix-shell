_: {
  imports = [ ./flake-module.nix ];

  perSystem =
    { config, ... }:
    {
      devShells.default = config.devShells.phenix;
    };
}
