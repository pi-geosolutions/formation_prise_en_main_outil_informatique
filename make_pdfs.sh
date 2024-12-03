#!/bin/bash

pandoc -V geometry:margin=35mm -o programme.pdf programme.md
pandoc -V geometry:margin=35mm -o notes.pdf notes.md
 pandoc -V geometry:margin=35mm -o clavier.pdf clavier/readme.md clavier/raccourcis.md
 pandoc -V geometry:margin=35mm -o windows.pdf windows/readme.md
 pandoc -V geometry:margin=35mm -o linux.pdf linux/readme.md