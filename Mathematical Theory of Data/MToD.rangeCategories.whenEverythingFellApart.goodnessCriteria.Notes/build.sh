#!/bin/bash

# Ensure build and output folders exist
mkdir -p build
mkdir -p output

# Sync source files into build folder
rsync -a ./*.tex build/
rsync -a ./latexmkrc build

# Enter build folder quietly
pushd build > /dev/null

if [ -n "$1" ]; then
    # User supplied a .tex filename
    texfile="$1"

    # Run latexmk on the given texfile
    latexmk -pdfps "$texfile"

    # Strip .tex to obtain output pdf name
    pdfname="${texfile%.tex}.pdf"

    # Copy PDF into output folder
    cp "$pdfname" ../output/

else
    # No argument: build everything
    latexmk -pdfps

    # Copy ALL generated PDFs into output/
    cp *.pdf ../output/
fi

# Return to original directory quietly
popd > /dev/null

