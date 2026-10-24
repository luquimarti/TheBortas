#!/bin/bash
# usage: rcsed.sh file.rc  -- ship identity in the exe's version info
f="$1"
set_value() { sed -i -E "s|(VALUE \"$1\", \")[^\"]*\\\\0\"|\\1$2\\\\0\"|" "$f"; }
set_value CompanyName "luquimarti"
set_value FileDescription "PDZ II - a TheBortas ship from Drydock by luquimarti"
set_value InternalName "TheBortas"
set_value OriginalFilename "TheBortas.exe"
set_value ProductName "TheBortas"
set_value LegalCopyright "Ymir (C) 2024-2025 Ymir contributors. Drydock and TheBortas (C) 2026 luquimarti. GPLv3."
