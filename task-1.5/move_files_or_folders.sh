#!/bin/bash
source="$1"
destination="$2"
if [ -e "$source" ]; then
    mv "$source" "$destination"
    echo "Перемещено: $source в $destination"
else
    echo "Источник не найден: $source"
fi
