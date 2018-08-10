#!/usr/bin/env bash

# Usage example: /bin/sh ./run.sh javascript adyen-api-js
language=$1
output=$2

if [ "$language" = "" ]; then
    language="LANGUAGE"
    echo "[INFO] No command line input provided. Set \$language to $language"
fi

if [ "$output" = "" ]; then
    output="OUTPUT"
    echo "[INFO] No command line input provided. Set \$output to $output"
fi

java -jar swagger-codegen-cli-2.3.1.jar generate -i ../specification.yaml -l $language  -c ../client/$language/config.json -o ../../$output
