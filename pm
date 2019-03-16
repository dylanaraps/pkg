#!/bin/sh
#
# pm - package manager for kiss linux.

db_update() {
    :
}

die() {
    printf 'error: %s\n' "$@" >&2
    exit 1
}

log() {
    printf '\e[31m=>\e[m %s\n' "$1"
}

main() {
    [ -f "$1" ] || die "file not found $1"

    mkdir -p install

    tar xvf "$1" -C install || die "couldn't extract $1"
    db_update
}

main "$@"
