# TheBortas

**A native PC version of PDZ II (Saturn, USA), built with [Drydock](https://github.com/luquimarti/Drydock).**

[![Latest release](https://img.shields.io/github/v/release/luquimarti/TheBortas?label=release)](https://github.com/luquimarti/TheBortas/releases/latest)
[![Downloads](https://img.shields.io/github/downloads/luquimarti/TheBortas/total)](https://github.com/luquimarti/TheBortas/releases)
[![License: GPL v3](https://img.shields.io/badge/license-GPLv3-blue.svg)](LICENSE)

TheBortas is the first **ship** to leave the Drydock shipyard.

- **Drydock** is the shipyard: an open-source toolchain that recompiles Saturn
  SH-2 code into native PC code and runs it on top of the
  [Ymir](https://github.com/StrikerX3/Ymir) emulator, which keeps handling
  video, sound, CD and the rest of the hardware.
- **A ship** is one title built in that shipyard: a small recipe that describes
  where the code lives on the disc, plus settings and a ready-to-use release.
  This repository is that ship for PDZ II.

On first launch, TheBortas reads the code from your own disc, recompiles it
into native code on your PC, and from then on runs it natively, with cycle-exact
timing and frames identical to the original. Nearly all of the main code runs
natively; anything else falls back to Ymir's interpreter.

**This download contains no copyrighted data.** You need:

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

## While playing

Press **Esc** (or the Guide button on the controller) for the menu: full
screen, aspect ratio (16:9 or the original 4:3), frame rate counter, real
transparency, volume, controls, and **Advanced**, which brings back all of the
emulator's menus and settings.

## Defaults

- Video by GPU (Direct3D 12), 16:9, full screen (Alt+Enter toggles)
- Original mesh transparency (the "real transparency" enhancement is off: it
  is experimental and can crash)
- Saturn 3D Control Pad on port 1, mapped to an Xbox-style controller
- Frame rate and the share of native code are shown on screen (Shift+F1)

## What's in the package

| File | |
|---|---|
| `TheBortas.exe` | Ymir with Drydock, in ship mode |
| `ship/recipe.toml`, `ship/trace.txt` | which disc files hold code, where they load, their hashes, recorded addresses (no copyrighted data) |
| `tools/llvm/` | Clang and LLD, used once to build the native code |
| `dxcompiler.dll`, `dxil.dll` | Microsoft DirectX Shader Compiler |
| `licenses/` | licenses of everything above |

## Coming next

Planned in Drydock, and coming to TheBortas as they land: a modding / hook
system, image filters such as scanlines, higher internal resolution and true
widescreen. Follow [Drydock](https://github.com/luquimarti/Drydock) for
progress.

## Feedback

Something broke, looks wrong or runs slow? Open an
[issue](https://github.com/luquimarti/TheBortas/issues) with your Windows
version, GPU, and what you were doing when it happened. A screenshot with the
on-screen counters (Shift+F1) helps a lot.

## Support

If you'd like to support this project, see
[Drydock](https://github.com/luquimarti/Drydock).

## Building

See `.github/workflows/release.yml`: it builds the Ymir fork
(`external/drydock/external/Ymir`) with `-DYMIR_RECOMP_ROOT=external/drydock`
and packages the result.

## Why "TheBortas"?

Every Drydock ship is named after a starship. The Bortas is a Klingon flagship:
a fitting name for a voyage on dragonback.

## License

GPLv3 (see `LICENSE`), like Ymir and Drydock. Bundled third-party components
keep their own licenses (`licenses/`).

This is a non-commercial fan project. It is not affiliated with or endorsed by
the publisher or the hardware maker; all trademarks belong to their owners.
