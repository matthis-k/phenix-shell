_: {
  perSystem =
    { pkgs, ... }:
    {
      devShells.phenix = pkgs.mkShell {
        packages = with pkgs; [
          devenv
          git
          nix
        ];
        shellHook = ''
          echo "phenix-shell"
          echo "  maintenance: devenv test"
          echo "  fixes:       devenv tasks run maintenance:fix"
        '';
      };
    };
}
