#!/bin/zsh

pushd `dirname $0`
SRC_DIR="../assets/images"
DST_DIR="../assets/thumbs"
MAX_WIDTH=1200

mkdir -p "$DST_DIR"

echo "Optimizing images..."

find "$SRC_DIR" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) -print0 | while IFS= read -r -d '' img; do
    filename=$(basename "$img")
    if [[ "$filename" == *" "* ]]; then
        echo "WARNING: Space detected in filename: \"$filename\""
        echo "   Path: $img"
        echo "   It is highly recommended to use '_' instead of spaces for web URLs."
    fi

    rel_path=${img#$SRC_DIR/}
    dest_path="$DST_DIR/${rel_path%.*}.webp"
    dest_sub_dir=$(dirname "$dest_path")

    if [[ -f "$dest_path" ]]; then
        continue
    fi

    mkdir -p "$dest_sub_dir"
    cwebp -resize $MAX_WIDTH 0 -q 75 "$img" -o "$dest_path" > /dev/null 2>&1

    echo "Converted: $rel_path -> ${dest_path#$DST_DIR/}"
done

echo "Done! (webp thumbnails in $DST_DIR)"
popd