#!/bin/bash

###############################################################################
#  make svg file(s) from pdf file(s) in current directory.
#  then crop the svg file
#  each pdf file must be 1 page.
###############################################################################

for fname in $(ls *.pdf)
do
    pdftocairo -svg $fname
done	     

sed -i 's/width="842pt" height="595pt" viewBox="0 0 842 595/width="800pt" height="130pt" viewBox="40 70 810 130/g' *.svg
