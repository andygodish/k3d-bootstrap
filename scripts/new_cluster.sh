#!/bin/bash

CURR_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd )";
[ -d "$CURR_DIR" ] || { echo "FATAL: no current dir (maybe running in zsh?)";  exit 1; }

# shellcheck source=./common.sh
source "$CURR_DIR/common.sh";

section "Create a k3d Cluster" 

printf ${YEL}"Give your k3d cluster a name:${END} "
read K3D_CLUSTER

printf ${YEL}"How many server nodes?:${END} %d"
read SERVER_NODES

printf ${YEL}"How many agent nodes?:${END} %d"
read AGENT_NODES

info_pause_exec "Create a cluster" "k3d cluster create $K3D_CLUSTER --api-port 6550 --servers $SERVER_NODES --agents $AGENT_NODES --port 8080:80@loadbalancer --wait"
#####

section "Access the Cluster"

info_pause_exec "List k3d clusters to view your new cluster" "k3d cluster list"

