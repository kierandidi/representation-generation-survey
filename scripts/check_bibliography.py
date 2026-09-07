#!/usr/bin/env python3
"""Fail when LaTeX citation keys and BibTeX entries disagree."""

from pathlib import Path
import re
import sys


def main() -> int:
    tex = Path(sys.argv[1]).read_text(encoding="utf-8")
    bib = Path(sys.argv[2]).read_text(encoding="utf-8")
    cited: set[str] = set()
    for group in re.findall(r"\\cite\w*\{([^}]+)\}", tex):
        cited.update(key.strip() for key in group.split(","))
    defined = set(re.findall(r"@\w+\{\s*([^,\s]+)", bib))
    missing = sorted(cited - defined)
    unused = sorted(defined - cited)
    if missing:
        print("Missing bibliography entries:", ", ".join(missing))
        return 1
    print(f"Checked {len(cited)} cited keys; {len(unused)} entries are currently uncited.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

