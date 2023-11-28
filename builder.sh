#!/bin/bash

set -euxo pipefail

rm -f SHA512SUMS debian-12-generic-amd64.qcow2
rm -fr output-* packer_cache cidata.iso

apt install --no-install-recommends packer qemu-system-x86 qemu-utils

#PACKER_LOG=1 PACKER_LOG_PATH="packerlog.txt" packer build -parallel-builds=1 mydeb12.json
PACKER_LOG=1 packer build -parallel-builds=1 mydeb12.json

