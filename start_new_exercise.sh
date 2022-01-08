#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

export EXERCISE_NAME="${1}"
export EXERCISE_KEY=$(echo "${EXERCISE_NAME}" | tr '[:upper:]' '[:lower:]' | tr ' ' '_')
export EXERCISE_CLASS_NAME=$(echo "${EXERCISE_NAME}" | gsed -r 's/\<./\U&/g' | tr -d ' ')
export EXERCISE_MAIN_METHOD="${2}"

erb ./lib/coding_challenges/exercise_template.rb.erb > ./lib/coding_challenges/"${EXERCISE_KEY}".rb
erb ./spec/exercise_spec_template.rb.erb > ./spec/"${EXERCISE_KEY}"_spec.rb
