#!/bin/sh
#
# pm - package manager for kiss linux.

die() {
    printf 'error: %s\n' "$@" >&2
    exit 1
}

log() {
    printf '\e[31m=>\e[m %s\n' "$1"
}

main() {
    [ -f "$1" ] || die "file not found $1"

    ROOT=~/.fakeroot
    mkdir -p "$ROOT"

    tar xvf "$1" -C "$ROOT" || die "couldn't extract $1"
}

main "$@"
