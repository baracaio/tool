source ./config.sh
source ./alias.sh

main() {
    # Check for the presence of a command
    if [ "$#" -lt 2 ]; then
        echo "Usage: $0 command args..."
        exit 1
    fi

    # Extract command
    local command=$1
    shift # Remove the first argument, leaving only the command's arguments

    # Process the command
    case "$command" in alias)
            if [ "$#" -ne 2 ]; then
                echo "Usage: $0 alias name 'command'"
                exit 1
            fi
            add_alias "$@"
            ;;
        *)
            echo "Unknown command: $command"
            exit 1
            ;;
    esac
}

main "$@"