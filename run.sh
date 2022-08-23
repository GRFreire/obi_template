#!/usr/bin/sh

problem_name=$1

program_file="./${problem_name}/${problem_name}.js"

exit_code=0

for i in $(seq 1 3); do
    in_file="./${problem_name}/tests/in-${i}.txt"
    expected_out_file="./${problem_name}/tests/expected_out-${i}.txt"
    out_file="./${problem_name}/tests/out-${i}.txt"

    node "$program_file" < "$in_file" > "${out_file}"

    if cmp --silent -- "${out_file}" "${expected_out_file}"; then
        printf "\033[32m%s\033[0m\n" "Test #${i} passed!"
    else
        printf "\n%s\n" "---------------------------------"
        printf "\033[31m%s\033[0m\n\n" "Test #${i} failed!"
        diff --color "${out_file}" "${expected_out_file}";
        printf "%s\n\n" "---------------------------------"
        exit_code=1
    fi
done

exit $exit_code