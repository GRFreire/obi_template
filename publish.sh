#!/usr/bin/sh

BOOSTRAP_FILE="./header.js"

problem_name=$1

program_file="./${problem_name}/${problem_name}.js"
out_program_file="./${problem_name}/${problem_name}-final.js"

lines_in_header="$(cat $BOOSTRAP_FILE | wc -l)"

tail -n "+${lines_in_header}" $program_file > $out_program_file

echo "Output pasted in $out_program_file"