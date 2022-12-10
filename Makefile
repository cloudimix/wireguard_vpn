#!/usr/bin/env bash

.PHONY: infra
infra:
	ansible-playbook id_rsa_generating.yaml
	terraform init
	terraform apply -auto-approve

.PHONY: wg
wg:
	ansible-playbook -i dynamic_inventory.py play_wireguard_ubuntu.yaml -v

.PHONY: test
test:

.PHONY: clean
clean:
	
.PHONY: all
all: infra wg
