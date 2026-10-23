# TheBortas

A native PC version of **PDZ II** (Saturn, USA release), built with
[Drydock](https://github.com/luquimarti/Drydock): the game's CPU code is
recompiled to native code on your own PC, and the rest of the console is
emulated by [Ymir](https://github.com/StrikerX3/Ymir).

**This download contains no game data.** You need:

- your own copy of PDZ II, USA release (product number `MK-81022`), as a disc
  image (`.cue`/`.bin`, `.chd`, `.iso`, `.ccd`, ...)
- a Saturn BIOS image dumped from your own console

Only that exact release of the disc is accepted; other discs are refused.

## Getting started (Windows x64)

1. Download `TheBortas-windows-x64.zip` from
   [Releases](https://github.com/luquimarti/TheBortas/releases) and extract it
   anywhere you can write to (settings and saves are kept in that folder).
2. Run `TheBortas.exe`. It walks you through three steps:
   1. **BIOS**: select your Saturn BIOS file. It must be a North American /
      European BIOS (or a region-free one); TheBortas checks it and copies it
      to `roms/ipl/`.
   2. **Disc**: select your PDZ II (USA) disc image. Any other disc is refused.
   3. **Prepare**: TheBortas reads the code from your disc, recompiles it and
      builds `recomp/MK-81022.dll`. This takes a few minutes and happens only
      once.

After that, double-click `TheBortas.exe` and play.

## In game

Press **Esc** (or the Guide button on the controller) for the game menu:
full screen, aspect ratio (16:9 or the original 4:3), frame rate counter,
real transparency, volume, controls, and **Advanced**, which brings back all of
the emulator's menus and settings.

## Defaults

- Video by GPU (Direct3D 12), 16:9, full screen (Alt+Enter toggles)
- Original mesh transparency (the "real transparency" enhancement is off: it
  is experimental and can crash the game)
- Saturn 3D Control Pad on port 1, mapped to an Xbox-style controller
- Frame rate and the share of native code are shown on screen (Shift+F1)


## What's in the package

| File | |
|---|---|
| `TheBortas.exe` | Ymir with Drydock, in ship mode |
| `ship/recipe.toml`, `ship/trace.txt` | which disc files hold code, where they load, their hashes, recorded addresses (no game data) |
| `tools/llvm/` | Clang and LLD, used once to build the native game code |
| `dxcompiler.dll`, `dxil.dll` | Microsoft DirectX Shader Compiler |
| `licenses/` | licenses of everything above |

## Building

See `.github/workflows/release.yml`: it builds the Ymir fork
(`external/drydock/external/Ymir`) with `-DYMIR_RECOMP_ROOT=external/drydock`
and packages the result.

## License

GPLv3 (see `LICENSE`), like Ymir and Drydock. Bundled third-party components
keep their own licenses (`licenses/`).

This is a non-commercial fan project. It is not affiliated with or endorsed by
the game's publisher or the console's maker; all trademarks belong to their
owners.
