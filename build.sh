#!/bin/sh

set -e

NORMALIZE=normalize.css
SAKURA=sakura-earthly.css
CUSTOM=custom.css

# Check for build dependencies

if ! wget --version 2>&1 >/dev/null ; then
    echo "wget is not installed"
    exit 1
fi

if ! pandoc --version 2>&1 >/dev/null ; then
    echo "pandoc is not installed"
    exit 1
fi

# Download CSS

if [ ! -f "$NORMALIZE" ]; then
    wget "https://raw.githubusercontent.com/oxalorg/sakura/master/css/$NORMALIZE"
fi

if [ ! -f "$SAKURA" ]; then
    wget "https://raw.githubusercontent.com/oxalorg/sakura/master/css/$SAKURA"
fi

# Concatenate CSS

cat "$NORMALIZE" "$SAKURA" "$CUSTOM" > styles.css

# Build

_build () {
    local title="$1"
    local name="$2"

    pandoc \
        -o "$name.html" \
        -c styles.css \
        -H _head.html \
        -B _menu.html \
        -A _foot.html \
        -M title:"$title" \
        -M pagetitle:"$title" \
        -M author-meta:"George Lesica" \
        -T "LESICA.COM" \
        --standalone \
        "$name.md"

    echo "Built $name.html from $name.md"
}

_fragment () {
    local name="$1"

    pandoc \
        -o "$name.html" \
        "$name.md"

    echo "Fragment $name.html from $name.md"
}

_fragment _head
_fragment _menu
_fragment _foot

_build HOME index
_build QUOTES quotes
_build COMPUTERS computers

