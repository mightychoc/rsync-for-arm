FROM alpine:latest
qRUN version=$(curl -s https://ftp.gnu.org/gnu/bash/ | grep -o "bash-[0-9]\+\(\.[0-9]\+\)\{0,2\}\.tar\.gz" | grep -o '[0-9]\+\(\.[0-9]\+\)\{0,2\}' | sort -V | tail -1) && \
    echo "Latest version: $version"

