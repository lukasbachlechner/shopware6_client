#!/bin/bash

while getopts "d:" opt
do
   case "$opt" in
      d ) directory="$OPTARG" ;;
   esac
done

foldername=$(basename "$directory")
contents=$(ls -1 "$directory" | grep -v ".g.dart" | grep -v ".chopper.dart" | perl -anE "say qq(export '\$F[0]';)")


echo "$contents" > "$directory/$foldername.dart"