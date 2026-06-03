#!/bin/zsh

pushd `dirname $0`
SRC_DIR="../assets/images"
DST_DIR="../assets/thumbs"
MAX_SIZE=1200

mkdir -p "$DST_DIR"

echo "Optimizing images..."

find "$SRC_DIR" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) -print0 | while IFS= read -r -d '' img; do
    filename=$(basename "$img")
    if [[ "$filename" == *" "* ]]; then
        echo "WARNING: Space in filename: \"$filename\""
        echo "   Path: $img"
        echo "   Use '_' instead of spaces."
    fi

    rel_path=${img#$SRC_DIR/}
    dest_path="$DST_DIR/${rel_path%.*}.webp"
    dest_sub_dir=$(dirname "$dest_path")

    [[ -f "$dest_path" ]] && continue
    mkdir -p "$dest_sub_dir"

    width=$(sips -g pixelWidth "$img" | awk '/pixelWidth/ {print $2}')
    height=$(sips -g pixelHeight "$img" | awk '/pixelHeight/ {print $2}')

    rw=0; rh=0
    if (( width > MAX_SIZE || height > MAX_SIZE )); then
        if (( width >= height )); then
            rw=$MAX_SIZE
            rh=0
        else
            rw=0
            rh=$MAX_SIZE
        fi
        msg="Resized to ${MAX_SIZE}px"
    else
        msg="Original size"
    fi

    output=$(cwebp -resize $rw $rh -q 75 "$img" -o "$dest_path" 2>&1)
    if [[ $? -ne 0 ]]; then
        echo "❌ cwebp error: $rel_path"
        #echo "   Reason: $output"
    else
        echo "✅ ${msg}: $rel_path"
    fi
done

echo "Done! (webp thumbnails in $DST_DIR)"
popd