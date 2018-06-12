#!/bin/bash

set -eu pipefail

. "scripts/stack_name_vars.sh"

docker run \
    -v $(pwd):$WORKDIR \
    -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID:-} \
    -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY:-} \
    -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION:-eu-west-2} \
    nathandines/forge deploy --stack-name $STACK_NAME --template-file cf/vpn.yaml --parameters-file params/params.yaml

echo "Username is: $UNAME"
echo "Password is: $PWD"
echo "Passphrase is: $PHRASE"

if [ -x "$(aws cloudformation help)" ]; then
    aws cloudformation describe-stacks --query "Stacks[?StackName=='$STACK_NAME'].Outputs[*]"
fi
