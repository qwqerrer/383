#!/bin/bash
source="$1"
destination="$2"
if [ -e "$source" ]; then
    cp -r "$source" "$destination"
    echo "Скопировано: $source в $destination"
else
    echo "Источник не найден: $source"
fi
