#!/bin/bash

#move out of release dir
#cd ..

#Get current version without -SNAPSHOT
version=$(grep "<version" pom.xml -m 1)
version=$(sed 's/<version>//g' <<< $version)
version=$(sed 's/-SNAPSHOT<\/version>//g' <<< $version)

#Incriment Minor Version and set Patch to 0
IFS='.' read -r -a array <<< "$version"
minor="${array[1]}"
minor="$(($minor + 1))"
newVersion="${array[0]}.${minor}.0-SNAPSHOT"

echo "$newVersion"
