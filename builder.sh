#!/bin/bash

set -euxo pipefail

rm -f SHA512SUMS debian-11-generic-amd64.qcow2
rm -fr output-* packer_cache cidata.iso

apt install --no-install-recommends packer=1.9 qemu-system-x86 qemu-utils

#PACKER_LOG=1 PACKER_LOG_PATH="packerlog.txt" packer build -parallel-builds=1 deb11k6.json
PACKER_LOG=1 packer build -parallel-builds=1 deb11k6.json
