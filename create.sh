#!/usr/bin/sh

BOOSTRAP_FILE="./header.js"

problem_name=$1

mkdir "./${problem_name}"
mkdir "./${problem_name}/tests"

cp $BOOSTRAP_FILE "./${problem_name}/${problem_name}.js"

touch "./${problem_name}/tests/in-1.txt"
touch "./${problem_name}/tests/expected_out-1.txt"

touch "./${problem_name}/tests/in-2.txt"
touch "./${problem_name}/tests/expected_out-2.txt"

touch "./${problem_name}/tests/in-3.txt"
touch "./${problem_name}/tests/expected_out-3.txt"