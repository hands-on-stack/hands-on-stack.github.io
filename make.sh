#!/bin/bash

which landslide
if [ $? != 0 ] ; then
   echo "error: landslide not found" 
   exit 1
fi

for inputfile in `ls *.rst`
do
   outputfile=`basename ${inputfile} .rst`
   landslide -r -d ${outputfile}.html ${inputfile}
done
