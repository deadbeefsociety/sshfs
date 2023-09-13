default:
    just --list

build_directory := "build"

build:
    #!/usr/bin/env bash
    mkdir {{build_directory}}
    cd {{build_directory}}
    meson ..
    ninja


test: build
    #!/usr/bin/env bash
    cd {{build_directory}}
    /usr/bin/env python3 -m pytest test

