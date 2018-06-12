#!/bin/bash

export WORKDIR=/workdir
export AWS_DEFAULT_REGION=eu-west-2
export STACK_NAME=$AWS_DEFAULT_REGION-vpn
export UNAME=$USER
export PWD="$(openssl rand -base64 8 | md5 | head -c15)"
export PHRASE="$(openssl rand -base64 8 | md5 | head -c15)"