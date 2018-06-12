#!/bin/bash

set -eu pipefail

. "scripts/stack_name_vars.sh"

forge destroy --stack-name $STACK_NAME
