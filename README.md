# phenix-shell

Shared development shells for Phenix repositories.

## Standalone

Enter the repository maintenance shell:

```console
nix develop
```

Run the complete maintenance suite with:

```console
devenv test
```

## Flake-parts module

Import `flakeModules.default` to expose the shared shell as `devShells.phenix`:

```nix
{
  inputs.phenix-shell.url = "github:matthis-k/phenix-shell";

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ inputs.phenix-shell.flakeModules.default ];
      systems = [ "x86_64-linux" "aarch64-linux" ];
    };
}
```

Then enter it with:

```console
nix develop .#phenix
```
