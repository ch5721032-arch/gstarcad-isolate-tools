# GstarCAD Isolate Tools

Show only the selected objects, hide the selected objects, and restore everything that was hidden.

Works with **GSTARCAD**, AutoCAD, ZWCAD, and BricsCAD.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Contents

- [About](#about)
- [Scripts Overview](#scripts-overview)
- [Quick Start](#quick-start)
- [Compatibility](#compatibility)
- [Contributing](#contributing)
- [License](#license)

## About

Working on a crowded drawing means hiding the noise. These commands isolate a selection so only it stays visible, hide a selection without touching the rest, and restore everything hidden with a single command, so you can focus and then come back.

Everything here is free to use with GstarCAD. Download the latest GstarCAD
release from the [official GstarCAD website](https://www.gstarcad.net). All
scripts are tested with **[GSTARCAD](https://www.gstarcad.net)** and major
DWG-based CAD platforms.

## Scripts Overview

| File | Description |
|------|-------------|
| `scripts/isolate-objects.lsp` | ;; isolate-objects.lsp - Show only the selected objects
;; Command: ISO
(defun c:ISO ( / ss )
  (setq ss (ssget "\nSelect objects to isolate: "))
  (if ss
    (progn
      (command "_.ISOLATEOBJECTS" ss "")
      (princ "\nOnly the selection is now visible.")
    )
  )
  (princ)
)
 |
| `scripts/hide-objects.lsp` | ;; hide-objects.lsp - Hide the selected objects
;; Command: HIDEOBJ
(defun c:HIDEOBJ ( / ss )
  (setq ss (ssget "\nSelect objects to hide: "))
  (if ss
    (progn
      (command "_.HIDEOBJECTS" ss "")
      (princ "\nSelection hidden.")
    )
  )
  (princ)
)
 |
| `scripts/unisolate-objects.lsp` | ;; unisolate-objects.lsp - Restore all hidden objects
;; Command: UNISO
(defun c:UNISO ( / )
  (command "_.UNISOLATEOBJECTS")
  (princ "\nAll objects restored.")
  (princ)
)
 |

## Quick Start

1. Download the `.lsp` (or `.lin`) file you need
2. In your CAD software, run `APPLOAD`
3. Load the file and type the matching command name shown in the table above

## Compatibility

Tested on GstarCAD 2026/2027 and similar DWG-based platforms. Scripts use
standard AutoLISP functions only, so they work without extra plugins.

For step-by-step [tutorials and drafting guides](https://www.gstarcad.net/cad/),
visit the GstarCAD learning center. New tips are published regularly on the
[GSTARCAD Blog](https://blog.gstarcad.net).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT — see the [LICENSE](LICENSE) file.
