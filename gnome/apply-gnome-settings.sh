#!/bin/bash

# Check if the file argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <gnome-settings-dump-file>"
    exit 1
fi

DUMP_FILE="$1" # File provided as the first argument

# Check if the dump file exists
if [ ! -f "$DUMP_FILE" ]; then
    echo "Error: Dump file not found."
    exit 1
fi

# Read the dump file line by line
while IFS= read -r line; do
    # Extract schema, key, and value
    schema=$(echo "$line" | awk '{print $1}')
    key=$(echo "$line" | awk '{print $2}')
    value=$(echo "$line" | cut -d' ' -f3-)

    # Apply the setting
    gsettings set "$schema" "$key" "$value" 2>/dev/null

    # Check for errors
    if [ $? -ne 0 ]; then
        echo "Failed to apply: $schema $key $value"
    fi
done < "$DUMP_FILE"

echo "Settings applied successfully."
