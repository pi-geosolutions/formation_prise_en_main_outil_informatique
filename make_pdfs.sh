#!/bin/bash

pandoc -V geometry:margin=35mm -o programme.pdf programme.md
pandoc -V geometry:margin=35mm -o notes.pdf notes.md
pandoc -V geometry:margin=35mm -o formationPriseEnMain.pdf readme.md \
    clavier.md \
    windows.md \
    linux.md \
    bd.md