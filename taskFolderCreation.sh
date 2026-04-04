# #!/bin/bash

# read -p "Enter the number of task folders you want to create: " n

# # Step 1: Find max existing task number
# max=0

# for dir in Task-*; do
#     if [ -d "$dir" ]; then
#         num=$(echo "$dir" | cut -d'-' -f2)

#         if [[ "$num" =~ ^[0-9]+$ ]]; then
#             if (( num > max )); then
#                 max=$num
#             fi
#         fi
#     fi
# done

# echo "Current max task number: $max"

# # Step 2: Take task names and create folders
# echo "Enter task names (one per line):"

# for ((i=1; i<=n; i++)); do
#     read task_name

#     new_num=$(printf "%03d" $((max + i)))

#     # Optional: replace spaces with hyphen
#     clean_name=$(echo "$task_name" | tr ' ' '-')

#     folder_name="Task-$new_num-$clean_name"

#     mkdir "$folder_name"
#     cd $folder_name
#     touch README.md
#     echo "Created: $folder_name"
#     cd ..
# done


# This code is in testing above code is having an isue because it was wrongly treating decimal as octal.

#!/bin/bash

read -p "Enter the number of task folders you want to create: " n

# Validate input
if ! [[ "$n" =~ ^[0-9]+$ ]] || [ "$n" -le 0 ]; then
    echo "Error: Please enter a valid positive number"
    exit 1
fi

# Step 1: Find max existing task number
max=0

for dir in Task-*; do
    if [ -d "$dir" ]; then
        num=$(echo "$dir" | cut -d'-' -f2)

        if [[ "$num" =~ ^[0-9]+$ ]]; then
            if (( 10#$num > 10#$max )); then
                max=$num
            fi
        fi
    fi
done

echo "Current max task number: $max"

# Step 2: Take task names and create folders
echo "Enter task names (one per line):"

for ((i=1; i<=n; i++)); do
    read -p "Task $i: " task_name

    # Handle empty input
    if [ -z "$task_name" ]; then
        echo "Warning: Empty name detected, using default name"
        task_name="task-$i"
    fi

    new_num=$(printf "%03d" $((10#$max + i)))

    # Replace spaces with hyphens and remove special characters
    clean_name=$(echo "$task_name" | tr ' ' '-' | tr -cd '[:alnum:]-')

    folder_name="Task-$new_num-$clean_name"

    # Avoid overwrite
    if [ -d "$folder_name" ]; then
        echo "Warning: Folder already exists: $folder_name (skipping)"
        continue
    fi

    mkdir -p "$folder_name"
    touch "$folder_name/README.md"

    echo "Created: $folder_name"
done

echo "All tasks processed successfully"