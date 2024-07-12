#!/bin/bash

cut_file() {
    local file=$1
    local temp_file="${file}.tmp"
    local line_count=$(wc -l < "$file")
    local half_line_count=$((line_count / 2))

    # Guardar la mitad superior en un archivo temporal
    head -n "$half_line_count" "$file" > "$temp_file"

    # Renombrar el archivo temporal al nombre original
    mv "$temp_file" "$file"
}
