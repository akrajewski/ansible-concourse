#!/bin/bash
set -e

AVM_VERSION="v1.0.0"

export ANSIBLE_VERSIONS_1="2.5.13"
export INSTALL_TYPE_1="pip"
export ANSIBLE_LABEL_1="v2.5"

export ANSIBLE_VERSIONS_2="2.6.10"
export INSTALL_TYPE_2="pip"
export ANSIBLE_LABEL_2="v2.6"

export ANSIBLE_VERSIONS_3="2.7.4"
export INSTALL_TYPE_3="pip"
export ANSIBLE_LABEL_3="v2.7"

# Whats the default version
export ANSIBLE_DEFAULT_VERSION="v2.5"

## Create a temp dir to download avm
avm_dir="$(mktemp -d 2> /dev/null || mktemp -d -t 'mytmpdir')"
git clone https://github.com/ahelal/avm.git "${avm_dir}" > /dev/null 2>&1
cd "${avm_dir}"
git checkout ${AVM_VERSION}
/bin/sh "${avm_dir}"/setup.sh

exit 0
