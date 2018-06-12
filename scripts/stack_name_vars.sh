#!/bin/bash

export UNAME=$USER
export STACK_NAME=$UNAME-vpn
export PWD="$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13)"
export PHRASE="$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13)"