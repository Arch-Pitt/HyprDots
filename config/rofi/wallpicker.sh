#!/bin/bash

WALLDIR="$HOME/Pictures/Wallpapers"

get_list() {
  for img in "$WALLDIR"/*; do
    [ -f "$img" ] || continue
    name=$(basename "$img")
    clean_name="${name%.*}"

    echo -en "$clean_name\0icon\x1f$img\n"
  done
}

choice=$(get_list | rofi -dmenu \
  -show-icons \
  -p "" \
  -theme-str '
    window {
        width: 900px;
        border-radius: 12px;
    }

   listview {
      columns: 5;
      lines: 2;
      spacing: 12px;
      scrollbar: false;
    }

    element {
        orientation: vertical;
        padding: 6px;
        border-radius: 10px;
    }

    element-icon {
        size: 140px;
        horizontal-align: 0.5;
    }

    element-text {
        horizontal-align: 0.5;
        font: "JetBrainsMono 10";
    }
  ')
[ -z "$choice" ] && exit

file=$(find "$WALLDIR" -type f | while read -r f; do
  base=$(basename "$f")
  clean="${base%.*}"
  [ "$clean" = "$choice" ] && echo "$f"
done)

[ -z "$file" ] && exit

awww img --transition-fps 60 \
         --transition-type grow \
         --transition-pos center \
         "$file"

LOCKDIR="$HOME/.config/hypr/hyprlock"
LOCKIMG="$LOCKDIR/wallpaper.jpg"

magick "$file" "$LOCKIMG"
