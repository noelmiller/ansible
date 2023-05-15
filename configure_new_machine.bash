#!/bin/bash
ansible-playbook post_configuration.yml --ask-vault-pass --limit new_server
