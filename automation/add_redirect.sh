#!/bin/zsh

pushd `dirname $0`

cd "../_posts"
for file in *.md; do
    if [[ $file =~ [0-9]{4}-[0-9]{2}-[0-9]{2}-([0-9]{3})- ]]; then
        id=${match[1]}

        if ! grep -q "redirect_from:" "$file"; then
            minimal=$((10#$id))

            REDIRECT_BLOCK="  - /${id}"
            if [[ "$id" != "$minimal" ]]; then
                REDIRECT_BLOCK="${REDIRECT_BLOCK}\\
  - /${minimal}"
            fi

            # for 001〜009
            if [[ "$id" =~ ^00[0-9]$ ]]; then
                two_digit="0${minimal}"
                REDIRECT_BLOCK="${REDIRECT_BLOCK}\\
  - /${two_digit}"
            fi

            echo "✅ Adding redirects (/$id, etc.) to $file"

            sed -i '' "3i\\
redirect_from:\\
${REDIRECT_BLOCK}\\
" "$file"
        else
            echo "⚠️  Skipped: $file (already has redirect_from)"
        fi
    fi
done

popd
echo "Done! All posts processed."