#!/bin/sh

VAULT_TOKEN=$1

docker-compose run vault-1 sh -c "VAULT_TOKEN=$VAULT_TOKEN vault audit disable -address=http://vault-1:8200 socket"
docker-compose run vault-1 sh -c "VAULT_TOKEN=$VAULT_TOKEN vault audit enable -address=http://vault-1:8200 socket address=vector:9000 socket_type=tcp"
