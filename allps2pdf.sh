#!/bin/bash

#########################################################
# make pdf file(s) from ps file(s) in current directory
#########################################################

for fname in $(ls *.ps)
do
    ps2pdf $fname
done	     
