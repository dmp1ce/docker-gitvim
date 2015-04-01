# Dockorized Git and Vim

Use version 15.04 of Ubuntu to install Git and Vim in a Docker container.

## Usage

Optionally, use the `build.sh` script to build the container and/or run the scripts `./git` or `./vim`. If you don't run `build.sh` then the Docker image will be downloaded from the Docker Registry.

To run git or vim without using the scripts try the following docker commands.

- `docker run --rm -it -u $(id -u) -e "HOME=$HOME" -v "$HOME:$HOME" -v "$PWD:$PWD" -w "$PWD" --entrypoint="git" dmp1ce/gitvim --version`
- `docker run --rm -it -u $(id -u) -e "HOME=$HOME" -v "$HOME:$HOME" -v "/etc/passwd:/etc/passwd:ro" -v "/etc/shadow:/etc/shadow:ro" -v "/etc/group:/etc/group:ro" -v "/etc/sudoers.d:/etc/sudoers.d:ro" -v "$PWD:$PWD" -w "$PWD" --entrypoint="vim" dmp1ce/gitvim`

## License

The Unlicense
