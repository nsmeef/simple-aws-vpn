#!/bin/bash

set -eu pipefail

. "scripts/stack_name_vars.sh"

forge deploy \
    --stack-name $STACK_NAME \
    --template-file cloudformation/vpn.yaml \
    --parameters-file params/params.yaml

echo "Please give the server ~5 minutes to fully configure"
echo "Ensure you send all traffic to the VPN to aid anonymity"
echo "Username: $UNAME"
echo "Password: $PWD"
echo "Passphrase: $PHRASE"

aws cloudformation describe-stacks --query "Stacks[?StackName=='$STACK_NAME'].Outputs[*]"
