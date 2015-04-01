#!/usr/bin/env sh

set -e

hash docker > /dev/null 2>&1 || {
  echo "Could not find Docker. Please install Docker first."
  exit 1
}

id -Gn | grep docker > /dev/null 2>&1 || {
  echo "You are not permitted to run Docker. Please run \`sudo usermod -aG docker $USER\` first."
  exit 1
}

docker run --rm -it -u $(id -u) -e "HOME=$HOME" -v "$HOME:$HOME" -v "/etc/passwd:/etc/passwd:ro" -v "/etc/shadow:/etc/shadow:ro" -v "/etc/group:/etc/group:ro" -v "/etc/sudoers.d:/etc/sudoers.d:ro" -v "$PWD:$PWD" -w "$PWD" --entrypoint="vim" dmp1ce/gitvim $@
