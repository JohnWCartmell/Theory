#!/bin/sh
# =============================================================================
# build.bibtex.sh
# Linux/Mac version of the Windows build.bibtex.bat
# Builds bibliography.bib from bibliography.xml using Saxon
# =============================================================================

# -----------------------------
# 1. Locate the script directory
# -----------------------------
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# -----------------------------
# 2. Set environment variables (equivalents of DOS SET)
# -----------------------------
THEORY="$(cd "$SCRIPT_DIR/.." && pwd)"  #This is the Theory folder (clone of Githib repository)
SAXON_PATH="$THEORY/../../BuildArea/thirdparty/SaxonHE12-5J"


# -----------------------------
# 3. Set BibTeX source and temp directories
# -----------------------------
BIBSRC="$THEORY/SharedBibliography/src"
BIBTEMP="$THEORY/SharedBibliography/temp"

mkdir -p "$BIBTEMP"  # ensure temp folder exists

# -----------------------------
# 4. Run Saxon to generate bibliography.bib
# -----------------------------
echo "Generating bibliography.bib..."

    java -cp "$SAXON_PATH/saxon-he-12.5.jar:$SAXON_PATH/../xmlresolver-5.2.2.jar" \
     net.sf.saxon.Transform \
     -s:"$BIBSRC/bibliography.xml" \
     -xsl:"$BIBSRC/bibliography2.bibtex.xslt" \
     -o:"$BIBTEMP/bibliography.bib"


# -----------------------------
# 5. Finished
# -----------------------------
if [ -f "$BIBTEMP/bibliography.bib" ]; then
    echo "Bibliography generated successfully at $BIBTEMP/bibliography.bib"
else
    echo "ERROR: Bibliography not generated!"
fi

