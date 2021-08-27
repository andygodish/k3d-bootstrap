# Keycloak

### Requirements
- helm 
```
helm repo add bitnami https://charts.bitnami.com/bitnami
```
- kubectl pointing to a k8s cluster

1. Create ns `kubectl create ns keycloak`
2. Create a database in the keycloak namespace `helm install -n keycloak keycloak-db bitnami/postgresql-ha`
    - You will need to update the chart `values.yaml` so that the security context reflects the root user

Data from the ensuing chart `NOTES` will be important later. 

Release notes can be outputted with `helm get notes keycloak-db -n keycloak`

3. 

- helm fetch bitnami/postgresql-ha --untar