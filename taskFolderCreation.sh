#!/bin/bash

read -p "Enter the number of task folders you want to create: " n

# Step 1: Find max existing task number
max=0

for dir in Task-*; do
    if [ -d "$dir" ]; then
        num=$(echo "$dir" | cut -d'-' -f2)

        if [[ "$num" =~ ^[0-9]+$ ]]; then
            if (( num > max )); then
                max=$num
            fi
        fi
    fi
done

echo "Current max task number: $max"

# Step 2: Take task names and create folders
echo "Enter task names (one per line):"

for ((i=1; i<=n; i++)); do
    read task_name

    new_num=$(printf "%03d" $((max + i)))

    # Optional: replace spaces with hyphen
    clean_name=$(echo "$task_name" | tr ' ' '-')

    folder_name="Task-$new_num-$clean_name"

    mkdir "$folder_name"
    echo "Created: $folder_name"
done