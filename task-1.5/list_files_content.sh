#!/bin/bash
folder="$1"
if [ -d "$folder" ]; then
    for file in "$folder"/*; do
        if [ -f "$file" ]; then
            echo "\n--- Содержимое файла: $file ---"
            cat "$file"
        fi
    done
else
    echo "Папка не найдена: $folder"
fi
