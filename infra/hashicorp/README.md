Experiments with hashicorp technologies.

The goal is to have all existing services running in a single docker compose service definition.

### Vault

Store secrets and configurations

in docker-compose, see `vault`

### Consul 

Service discovery

in docker-compose, see `consul-server` and `consul-agent`

### Nomad

Container orchestrator

in docker-compose, see `nomad` and `nomad-client`

### Vector Logging

Setup the socket audit with `./tools/setup_vault_audit.sh $MY_VAULT_TOKEN` once vault is available and leased.