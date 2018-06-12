#!/bin/bash

set -eu pipefail

docker build -t simple-aws-vpn .

docker run \
    -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION:-eu-west-2} \
    -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
    -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
    -e USER=$USER \
    simple-aws-vpn ./scripts/delete.sh
