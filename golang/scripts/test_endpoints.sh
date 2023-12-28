#!/usr/bin/env bash

#linux compliant

usage() {
    cat << USAGE
Usage: $0 [OPTIONS]

Options:
  -h, --help    Show this help message
  --hello       Test the HelloHandler
  -g, --greet   Test the GreetHandler (requires a name argument)
  -s, --set     Test the SetHandler (requires a key-value pair argument in the format "key=value")
  --get         Test the GetHandler (requires a key argument)

Example: $0 --greet John --set "key=value" --get key
USAGE
}

test_endpoint() {
    endpoint=$1
    params=$2
    echo "Testing $endpoint"
    curl "http://localhost:8080/$endpoint?$params"
    echo ""
}

if [ $# -eq 0 ]; then
    usage
    exit 0
fi

OPTIONS=$(getopt -o h --long help,hello,greet:,set:,get: -n 'test_script.sh' -- "$@")
eval set -- "$OPTIONS"

while true; do
    case "$1" in
        -h|--help)
            usage
            exit 0 ;;
        --hello)
            test_endpoint ""
            shift ;;
        -g|--greet)
            test_endpoint "greet" "name=$2"
            shift 2 ;;
        -s|--set)
            test_endpoint "set" "$2"
            shift 2 ;;
        --get)
            test_endpoint "get" "key=$2"
            shift 2 ;;
        --)
            shift
            break ;;
        *)
            echo "Invalid option: -$OPTARG" >&2
            exit 1 ;;
    esac
done
