#!/bin/zsh

pushd `dirname $0`
POST_DIR="../_posts"
IMAGE_ROOT="../assets/images"

mkdir -p "$IMAGE_ROOT"

echo "Checking for new post folders..."

for file in "$POST_DIR"/*.md; do
    filename=$(basename "$file" .md)

    # remove prefix
    folder_name=$(echo "$filename" | sed -E 's/^[0-9]{4}-[0-9]{2}-[0-9]{2}-//')

    target_path="$IMAGE_ROOT/$folder_name"

    if [ ! -d "$target_path" ]; then
        echo "Creating: $target_path"
        mkdir -p "$target_path"
    fi
done

echo "Done!"
popd