#!/bin/bash

set -eu pipefail

. "scripts/stack_name_vars.sh"

docker run \
    -v $PWD:/tmp \
    -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID:-} \
    -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY:-} \
    -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION:-eu-west-2} \
    nathandines/forge destroy --stack-name $STACK_NAME
