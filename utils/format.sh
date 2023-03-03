#!/bin/bash

current_dir=$(pwd)

run_shfmt() {
  shfmt ./"$1" >./fmt-"$1"
  mv ./fmt-"$1" ./"$1"
  chmod +x ./"$1"
}

run_shfmt pueue_update_asdf_zig_master.sh
run_shfmt update_asdf_zig_master.sh

cd utils || exit
run_shfmt format.sh
run_shfmt install.sh
run_shfmt lint.sh
cd "$current_dir" || exit
