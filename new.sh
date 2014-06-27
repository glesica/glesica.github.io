#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo 'Usage: new.sh <title>'
fi

scriptdir=`dirname "$0"`
title=`echo $1 | tr ' ' '-' | tr '[:upper:]' '[:lower:]'`
filename="${scriptdir}/_posts/`date +%Y-%m-%d-`${title}.md"

touch ${filename}
echo "---" >> ${filename}
echo "title: $1" >> ${filename}
echo "layout: post_page" >> ${filename}
echo "---" >> ${filename}

$EDITOR ${filename}
