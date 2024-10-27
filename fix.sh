#!/bin/bash

# Directory containing the symlinks
SYMLINK_DIR="/kernel"

# Loop through each symlink in the directory
find "$SYMLINK_DIR" -type l | while read symlink; do
    # Get the target file the symlink points to
    target=$(readlink "$symlink")

    # Check if the target exists
    if [ -e "$target" ]; then
        # Copy the target file to the symlink's directory
        cp "$target" "$SYMLINK_DIR"
        
        # Recreate the symlink (this will replace it)
        ln -sf "$(basename "$target")" "$symlink"
    fi
done
