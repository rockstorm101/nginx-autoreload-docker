#!/bin/sh

set -e

_autoreload() {
    while inotifywait --event create,modify,delete --quiet \
                      "${AUTORELOAD_FILES}" 
    do
        nginx -s reload
    done
}

if [ -n "${AUTORELOAD_FILES}" ]; then
    _autoreload &
fi
