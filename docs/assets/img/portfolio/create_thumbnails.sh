#!/bin/bash

# List of image files
files=(
    "aaexports-1.jpg"
    "Agentpet-1.jpg"
    "Agentpet-2.jpg"
    "Agentpet-3.jpg"
    "Agentpet-4.jpg"
    "alshifa-1.jpg"
    "bfmr-1.jpg"
    "dealershipexpert-1.jpg"
    "dealershipexpert-2.jpg"
    "discountvantruck-1.jpg"
    "idaratulmustafa-1.jpg"
    "idaratulmustafa-2.jpg"
    "idaratulmustafa-3.jpg"
    "idaratulmustafa-4.jpg"
    "idaratulmustafa-5.jpg"
    "medlucy-1.jpg"
    "petfinder-1.jpg"
    "petfinder-2.jpg"
    "petfinder-3.jpg"
    "petfinder-4.jpg"
    "petfinder-5.jpg"
)

# Directory for thumbnails
thumbnail_dir="thumbs"
mkdir -p "$thumbnail_dir"

# Resize and create thumbnails
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        # Extract the base filename
        base_name=$(basename "$file")
        # Create a thumbnail with the specified dimensions
        convert "$file" -resize 120x75^ -gravity center -extent 120x75 "${thumbnail_dir}/${base_name}"
        echo "Thumbnail created for $file: ${thumbnail_dir}/${base_name}"
    else
        echo "File $file not found, skipping."
    fi
done
