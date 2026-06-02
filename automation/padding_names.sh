#!/bin/zsh

pushd `dirname $0`

cd "../_posts"
for file in *.md; do
    if [[ $file =~ ^([0-9]{4}-[0-9]{2}-[0-9]{2}-)([0-9]+)-(.*)$ ]]; then
        date_part=${match[1]}
        num_part=${match[2]}
        rest_part=${match[3]}

        padded_num=$(printf "%03d" $num_part)

        new_name="${date_part}${padded_num}-${rest_part}"

        if [[ "$file" != "$new_name" ]]; then
            echo "Renaming: $file -> $new_name"
            mv "$file" "$new_name"
        fi
    fi
done

echo "Renaming image folders..."
cd "../assets/images"
for dir in *(/); do
    if [[ $dir =~ ^([0-9]+)(.*)$ ]]; then
        num_part=${match[1]}
        rest_part=${match[2]}

        padded_num=$(printf "%03d" $num_part)
        new_dir_name="${padded_num}${rest_part}"

        if [[ "$dir" != "$new_dir_name" ]]; then
            echo "  Folder: $dir/ -> $new_dir_name/"
            mv "$dir" "$new_dir_name"
        fi
    fi
done

popd