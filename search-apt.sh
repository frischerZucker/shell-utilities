#!/bin/bash

search-apt () {
# Search for apt packages with a keyword in their name.
#
# Arguments:
#   1: keyword to search
    KEYWORD=$1
    if [ ! "$KEYWORD" ]; then
        echo "Too few arguments!"
        echo "Use 'search-apt [KEYWORD TO SEARCH]'."
        exit 1
    fi
    apt list | grep "$KEYWORD"
}