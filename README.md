# Ninja Build

Ninja build file language support for [Zed](https://zed.dev/).

This extension adds:

- syntax highlighting for `build.ninja` and `*.ninja` files
- outline entries for `rule`, `pool`, `build`, and `default` declarations
- shell highlighting inside `command = ...` bindings
- runnable buttons for Ninja build targets

## Development

Install this checkout as a dev extension from Zed:

1. Open `zed: extensions`.
2. Choose `Install Dev Extension`.
3. Select this repository directory.

Open `examples/build.ninja` to smoke test highlighting, outline entries, shell injection, and runnable targets.

## Publishing

The Zed registry already contains an extension ID named `ninja` for an unrelated theme, so this language extension uses the publishable ID `ninja-build`.

To publish:

1. Test the extension locally in Zed as a dev extension.
2. Open a PR against `zed-industries/extensions`.
3. Add this repository as an HTTPS submodule at `extensions/ninja-build`.
4. Add the registry entry:

```toml
[ninja-build]
submodule = "extensions/ninja-build"
version = "0.0.1"
```

5. Run `pnpm sort-extensions` in the registry checkout.

## License

MIT

