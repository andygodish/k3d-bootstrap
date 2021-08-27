#!/bin/bash

CURR_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd )";
[ -d "$CURR_DIR" ] || { echo "FATAL: no current dir (maybe running in zsh?)";  exit 1; }

# shellcheck source=./common.sh
source "$CURR_DIR/common.sh";

section "List Your Local k3d Clusters"

info_pause_exec "List k3d clusters to view your new cluster" "k3d cluster list"

section "Stop running k3d cluster"

printf ${YEL}"Enter the name of the running k3d cluster:${END} "
read K3D_CLUSTER 

info_pause_exec "Stop container" "k3d cluster stop $K3D_CLUSTER"