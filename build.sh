#!/bin/sh

NORMALIZE=normalize.css
SAKURA=sakura-earthly.css

# Download CSS

if [ ! -f "$NORMALIZE" ]; then
    wget "https://raw.githubusercontent.com/oxalorg/sakura/master/css/$NORMALIZE"
fi

if [ ! -f "$SAKURA" ]; then
    wget "https://raw.githubusercontent.com/oxalorg/sakura/master/css/$SAKURA"
fi

# Build

_build () {
    local title="$1"
    local name="$2"

    pandoc \
        -o "$name.html" \
        -c "$NORMALIZE" \
        -c "$SAKURA" \
        -c "custom.css" \
        -M title:"$title" \
        -M pagetitle:"$title" \
        -M author-meta:"George Lesica" \
        -T "LESICA.COM" \
        --standalone \
        "$name.md"
}

_build HOME index

