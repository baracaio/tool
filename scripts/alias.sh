#!/bin/bash

add_alias() {
    # Check if at least two arguments are given
    if [ "$#" -lt 2 ]; then
        echo "Usage: $0 alias_name command_to_execute"
        echo "Example: $0 dev cd ~/dev"
        exit 1
    fi

    # Extract the alias name
    local alias_name=$1
    local command_to_execute=$2

    # Debug: Print the command before substitution
    echo "Before substitution: $command_to_execute"

    # Perform the substitution
    command_to_execute=$(echo "$command_to_execute" | envsubst)

    # Debug: Print the command after substitution
    echo "After substitution: $command_to_execute"

    # Get the full path of the directory where the script is located
    script_dir=$(dirname "$(realpath "$0")")

    # Define the full path to the alias file, one level up in a folder named 'zsh'
    alias_file="$script_dir/../zsh/alias.zsh"

    # Check if the alias file exists, if not, create it
    if [ ! -f "$alias_file" ]; then
        touch "$alias_file"
    fi

    # Append the alias to the file without double quoting the command
    echo "alias $alias_name='$command_to_execute'" >> "$alias_file"

    echo "Alias added to $alias_file: $alias_name"    
}