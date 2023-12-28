#!/usr/bin/env bash

usage() {
    gum log "Usage: $0 [OPTIONS]"
    gum log "Options:"
    gum log "  -h, --help    Show this help message"
    gum log "  --hello       Test the HelloHandler"
    gum log "  -g, --greet   Test the GreetHandler (requires a name argument)"
    gum log "  -s, --set     Test the SetHandler (requires a key-value pair argument in the format \"key=value\")"
    gum log "  --get         Test the GetHandler (requires a key argument)"
    gum log "Example: $0 --greet John --set \"key=value\" --get key"
}

test_endpoint() {
    endpoint=$1
    params=$2
    gum log "Testing $endpoint with params: $params"
    curl "http://localhost:8080/$endpoint?$params"
    echo ""
}

if [ $# -eq 0 ]; then
    usage
    exit 0
fi

while (( "$#" )); do
    case "$1" in
        -h|--help)
            usage
            exit 0 ;;
        --hello)
            test_endpoint ""
            shift ;;
        --greet)
            gum log "Enter a name:"
            name=$(gum input)
            test_endpoint "greet" "name=$name"
            shift ;;
        -s|--set)
            gum log 'Enter a key-value pair in the format "key=value":'
            kv=$(gum input)
            test_endpoint "set" "$kv"
            shift ;;
        -g|--get)
            gum log "Enter a key:"
            key=$(gum input)
            test_endpoint "get" "key=$key"
            shift ;;
        *)
            gum log "Invalid option: $1"
            exit 1 ;;
    esac
done