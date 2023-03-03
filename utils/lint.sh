#!/bin/bash

run_lint() {
  shellcheck ./"$1"
}

run_lint pueue_update_asdf_zig_master.sh
run_lint update_asdf_zig_master.sh
run_lint utils/format.sh
run_lint utils/install.sh
run_lint utils/lint.sh
