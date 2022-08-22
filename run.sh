#!/usr/bin/sh

problem_name=$1

program_file="./${problem_name}/${problem_name}.js"
in_file="./${problem_name}/in.txt"
expected_out_file="./${problem_name}/expected_out.txt"
out_file="./${problem_name}/out.txt"

node "$program_file" < "$in_file" > "${out_file}"

if cmp --silent -- "${out_file}" "${expected_out_file}"; then
    printf "\033[32m%s\033[0m\n\n" "OUTPUT MATCHES THE EXPECTED!"
    cat "${out_file}"
    echo "\n"
else
    printf "\033[31m%s\033[0m\n\n" "OUTPUT DOES NOT MATCH THE EXPECTED!"
    diff --color "${out_file}" "${expected_out_file}";
    exit 1;
fi