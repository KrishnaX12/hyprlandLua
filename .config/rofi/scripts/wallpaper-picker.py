#!/usr/bin/env python3

import hashlib
import os
from pathlib import Path
import subprocess


def main():
    wallpaper_dir = Path.home() / '.config/wallpaper'
    cache_dir = Path(os.environ.get('XDG_CACHE_HOME', Path.home() / '.cache')) / 'wallpaper-picker'
    cache_dir.mkdir(parents=True, exist_ok=True)
    extensions = {'.png', '.jpg', '.jpeg', '.webp', '.gif', '.bmp', '.avif'}
    wallpapers = sorted(
        (path for path in wallpaper_dir.rglob('*') if path.is_file() and path.suffix.lower() in extensions),
        key=lambda path: str(path).casefold(),
    )
    if not wallpapers:
        subprocess.run(['rofi', '-e', f'No wallpapers found in {wallpaper_dir}'], check=False)
        return

    entries = []
    for path in wallpapers:
        stat = path.stat()
        key = hashlib.sha256(f'{path}:{stat.st_mtime_ns}:{stat.st_size}'.encode()).hexdigest()
        thumbnail = cache_dir / f'{key}.png'
        if not thumbnail.exists():
            result = subprocess.run(
                ['magick', f'{path}[0]', '-auto-orient', '-thumbnail', '320x180^',
                 '-gravity', 'center', '-extent', '320x180', str(thumbnail)],
                capture_output=True,
            )
            if result.returncode:
                thumbnail.unlink(missing_ok=True)
        label = str(path.relative_to(wallpaper_dir)).replace('\n', ' ').replace('\r', ' ').replace('\x00', '').replace('\x1f', ' ')
        entry = label
        if thumbnail.exists():
            entry += f'\x00icon\x1f{thumbnail}'
        entries.append(entry)

    result = subprocess.run(
        ['rofi', '-dmenu', '-i', '-no-custom', '-show-icons', '-format', 'i',
         '-p', 'Wallpapers', '-theme', str(Path.home() / '.config/rofi/wallpaper-picker.rasi')],
        input='\n'.join(entries) + '\n', capture_output=True, text=True,
    )
    if result.returncode:
        return
    try:
        index = int(result.stdout.strip())
    except ValueError:
        return
    if 0 <= index < len(wallpapers):
        subprocess.run(['awww', 'img', str(wallpapers[index])], check=True)


if __name__ == '__main__':
    main()
