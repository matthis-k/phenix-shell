{ ... }: {
  phenix.overlays = [(final: prev: {
    phenix = (prev.phenix or {}) // {
      hello-shell = final.writeShellScriptBin "hello-shell" ''
        echo "hello from shell"
      '';
    };
  })];
}
