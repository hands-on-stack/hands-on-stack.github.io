#!/bin/bash

which landslide
if [ $? != 0 ] ; then
   echo "error: landslide not found" 
   exit 1
fi

for inputfile in `ls *.rst`
do
   outputfile=`basename ${inputfile} .rst`
   landslide -r -i -d ${outputfile}.html ${inputfile}
done
