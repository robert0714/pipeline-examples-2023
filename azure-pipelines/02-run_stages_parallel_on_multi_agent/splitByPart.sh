#!/bin/bash
# cmd usage: sh splitByPart.sh wildflyVerifyUnLoadDataExe_20221115.csv  3
func () {
     absoluteFile=$(readlink -m $1) 
     echo "filename: " $absoluteFile
     echo "part number: "$2
     lineNumber=$(wc  -l < $absoluteFile )
     echo "lineNumber of File: " $lineNumber
     linePerPart=$(( ( $lineNumber/$2 ) + ( $lineNumber%$2 > 0 )  )) 
     echo "line Per Part: " $linePerPart
    

     echo "${absoluteFile##*/}"
     echo "[DEBUG] spilt cmd: " split  -l $linePerPart  $1 -a 1  --numeric-suffixes \"splitFiles/${absoluteFile##*/}-\"     
     split  -l $linePerPart  $1  -a 1 --numeric-suffixes "splitFiles/${absoluteFile##*/}-"
}
func2 () {
     echo "directory: "$1
     files=$(ls $1)

     for i in $files;
     do
        echo $i;
     done
}
func $1  $2
func2 splitFiles