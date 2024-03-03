source ./config.sh
source ./alias.sh
source ./setup.sh

main() {
    local command=$1
    shift

    echo "Debug: Command is '$command', remaining args: $@"

    case "$command" in
        alias)
            echo "Debug: Inside alias with args: $@"
            if [ "$#" -ne 2 ]; then
                echo "Usage: $0 alias name 'command'"
                exit 1
            fi
            echo "before: Alias name is '$1', command is '$2'"
            add_alias "$1" "$2"
            ;;
        setup)
            setup
            ;;
        *)
            echo "Unknown command: $command"
            exit 1
            ;;
    esac
}

main "$@"