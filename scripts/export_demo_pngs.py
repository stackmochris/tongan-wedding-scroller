#!/usr/bin/env python3
"""Render opening-scene SVG sources as Godot-ready PNG files.

Run from repository root: python scripts/export_demo_pngs.py
Requires: pip install cairosvg Pillow
"""
from pathlib import Path
import io
import cairosvg
from PIL import Image

root = Path(__file__).resolve().parents[1]
folder = root / "assets" / "demo"
sources = sorted((folder / "characters").glob("*.svg")) + sorted((folder / "backgrounds").glob("*.svg"))
assert len(sources) == 10, f"Expected 10 SVG assets, got {len(sources)}"
for source in sources:
    data = cairosvg.svg2png(url=str(source))
    image = Image.open(io.BytesIO(data)).convert("RGBA")
    target = source.with_suffix(".png")
    image.save(target, optimize=True)
    print(f"{target.relative_to(root)}: {image.width}x{image.height}")
