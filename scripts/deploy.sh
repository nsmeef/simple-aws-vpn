#!/bin/bash

set -eu pipefail

. "scripts/stack_name_vars.sh"

forge deploy \
    --stack-name $STACK_NAME \
    --template-file cloudformation/vpn.yaml \
    --parameters-file params/params.yaml

echo "Username is: $UNAME"
echo "Password is: $PWD"
echo "Passphrase is: $PHRASE"

aws cloudformation describe-stacks --query "Stacks[?StackName=='$STACK_NAME'].Outputs[*]"
