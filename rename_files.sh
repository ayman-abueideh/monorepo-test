#!/bin/bash

# Directory where files are located
DIRECTORY="internal_repo_1"

# Loop over files starting with "project_" and rename them
for file in "$DIRECTORY"/project_*.py; do
  # Check if file exists to avoid errors if there are no matches
  if [[ -f "$file" ]]; then
    # Extract the base filename (e.g., project_file1.py -> file1.py)
    new_name="${file/project_/file_}"
    # Rename the file
    mv "$file" "$new_name"
  fi
done
