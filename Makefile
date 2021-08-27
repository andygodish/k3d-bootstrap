.PHONY: run prep

new: 
	scripts/new_cluster.sh && scripts/kubeconfig

kubeconfig: 
	scripts/kubeconfig.sh

stop: 
	scripts/stop_cluster.sh

prep:
	scripts/prep.sh
