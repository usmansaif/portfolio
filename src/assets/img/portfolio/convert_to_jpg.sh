#!/bin/bash

# List of files
files=(
    "aaexports-1.jpg"
    "Agentpet-1.jpg"
    "Agentpet-2.jpg"
    "Agentpet-3.jpg"
    "Agentpet-4.jpg"
    "alshifa-1.jpg"
    "alshifa-1.png"
    "bfmr-1.jpg"
    "bfmr-1.png"
    "dealershipexpert-1.png"
    "dealershipexpert-2.png"
    "discountvantruck-1.png"
    "idaratulmustafa-1.jpg"
    "idaratulmustafa-2.jpg"
    "idaratulmustafa-3.jpg"
    "idaratulmustafa-4.jpg"
    "idaratulmustafa-5.jpg"
    "medlucy-1.png"
    "petfinder-1.png"
    "petfinder-2.png"
    "petfinder-3.png"
    "petfinder-4.png"
    "petfinder-5.png"
)

# Loop through each file and convert
for file in "${files[@]}"; do
    # Check if file exists
    if [ -f "$file" ]; then
        # Extract the filename without extension
        base_name=$(basename "$file" | cut -f 1 -d '.')
        # Convert to .jpg with quality 80
        convert "$file" -quality 80 "${base_name}.jpg"
        echo "Converted $file to ${base_name}.jpg"
    else
        echo "File $file not found, skipping."
    fi
done
