#!/bin/bash

setup() {
    # Copy .zshrc to the user's home directory
    # if [ -f "$ZSHRC_SOURCE" ]; then
    #     cp "$ZSHRC_SOURCE" "$ZSHRC_DESTINATION"
    #     echo ".zshrc file has been set up in $ZSHRC_DESTINATION."
    # else
    #     echo "Source .zshrc file does not exist: $ZSHRC_SOURCE"
    # fi

    script_path=$(realpath "$0")
    
    if [ ! -d "$TARGET_BIN_DIR" ]; then
        echo "$TARGET_BIN_DIR does not exist. Creating it now..."
        # Attempt to create the directory
        sudo mkdir -p "$TARGET_BIN_DIR"
    fi  # This fi closes the if statement for checking $TARGET_DIR existence

    if [ $? -eq 0 ]; then
        echo "$TARGET_BIN_DIR has been successfully created."
    else
        echo "Failed to create $TARGET_BIN_DIR. You might need to run this script as root."
    fi  # Removed semicolon here

    sudo ln -s "$script_path" /usr/local/bin/tool
}

