#!/usr/bin/sh

BOOSTRAP_FILE="./header.js"

problem_name=$1

mkdir "./${problem_name}"
cp $BOOSTRAP_FILE "./${problem_name}/${problem_name}.js"
touch "./${problem_name}/in.txt"
touch "./${problem_name}/expected_out.txt"