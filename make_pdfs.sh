#!/bin/bash

pandoc -V geometry:margin=35mm -o programme.pdf programme.md
pandoc -V geometry:margin=35mm -o notes.pdf notes.md
pandoc -V geometry:margin=35mm -o formationPriseEnMain.pdf readme.md .latex/pagebreak.md  \
    clavier.md .latex/pagebreak.md  \
    windows.md .latex/pagebreak.md  \
    linux.md .latex/pagebreak.md  \
    bd.md