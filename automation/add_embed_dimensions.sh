#!/bin/zsh

pushd `dirname $0`

cd "../_posts"
for file in *.md; do
    if grep -q "embed_media:" "$file"; then
        if grep -qE '^[[:space:]]*width:' "$file"; then
            echo "⚠️  Skipped: $file (already has dimensions)"
            continue
        fi

        media_file=$(grep -E '^[[:space:]]*file:' "$file" | head -n 1 | sed -E 's/^[[:space:]]*file:[[:space:]]*["'"'"']?([^"'"'"']+)["'"'"']?/\1/')

        if [[ -z "$media_file" ]]; then
            echo "⚠️  Warning: embed_media found but no file specified in $file"
            continue
        fi

        if [[ "$media_file" =~ ^https?:// ]]; then
            echo "ℹ️  Skipped: $file (external URL: $media_file)"
            continue
        fi

        # resolve path (same as Liquid)
        if [[ "$media_file" =~ ^/ ]]; then
            target_path="..$media_file"
        else
            post_basename="${file:r}"
            folder_id="${post_basename:11}"
            target_path="../assets/images/${folder_id}/${media_file}"
        fi

        if [[ ! -f "$target_path" ]]; then
            echo "❌ File not found: $target_path (referenced in $file)"
            continue
        fi

        IFS=',' read -r width height < <(ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=p=0 "$target_path")

        if [[ -n "$width" && -n "$height" ]]; then
            echo "✅ Adding size (${width}x${height}) to $file"
            sed -i '' -e "/^[[:space:]]*file:/a\\
  width: ${width}\\
  height: ${height}
" "$file"
        else
            echo "❌ Failed to get dimensions for $target_path"
        fi
    fi
done

popd
echo "Done! All posts processed."