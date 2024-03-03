#!/bin/bash

# Check if exactly two arguments are given
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 alias_name 'command_to_execute'"
    exit 1
fi

# Extract parameters
alias_name=$1
command_to_execute=$2

# Define the file path
alias_file="alias.zsh"

# Append the alias to the file
echo "alias $alias_name='$command_to_execute'" >> "$alias_file"

echo "Alias added: $alias_name"
