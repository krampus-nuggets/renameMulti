#!/bin/bash

a=1
for i in *.<extension>; do
  newName=$(printf "%03d <filename>.<extension>" "$a") #03 = Amount of 0 Padding you want to add
  mv -i -- "$i" "$newName"
  let a=a+1
done
