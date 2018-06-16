#!/bin/bash

export USERNAME=$USER
export STACK_NAME=$USERNAME-vpn
export PASSWORD="$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13)"
export PHRASE="$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13)"
