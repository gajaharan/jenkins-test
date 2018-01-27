#!/bin/bash

#move out of release dir
#cd ..

#my_dir="$(dirname "$0")"
#"$my_dir/releasePomVersion.sh"

source $(dirname $0)/releasePomVersion.sh

echo "New Version $newVersion"
echo "releaseBranch $releaseBranch"
