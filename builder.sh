#!/bin/bash

set -euxo pipefail

apt install --no-install-recommends packer qemu-system-x86 qemu-utils

PACKER_LOG=1 packer build mydeb12.json
