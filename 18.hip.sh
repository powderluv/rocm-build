#!/bin/bash

set -e

sudo apt install -y mesa-common-dev
sudo apt install -y dpkg-dev rpm doxygen libelf-dev rename liburi-encode-perl \
                    libfile-basedir-perl libfile-copy-recursive-perl libfile-listing-perl libfile-which-perl

mkdir -p $ROCM_BUILD_DIR/hip
cd $ROCM_BUILD_DIR/hip
pushd .

ROCclr_DIR=$ROCM_GIT_DIR/ROCclr
OPENCL_DIR=$ROCM_GIT_DIR/ROCm-OpenCL-Runtime
HIP_DIR=$ROCM_GIT_DIR/HIP

START_TIME=`date +%s`

cmake \
    -DHIP_COMMON_DIR="$HIP_DIR" \
    -DAMD_OPENCL_PATH="$OPENCL_DIR" \
    -DROCCLR_PATH="$ROCCLR_DIR" \
    -DCMAKE_PREFIX_PATH="$ROCM_INSTALL_DIR" \
    -DCMAKE_HIP_ARCHITECTURES="gfx908" \
    -DCMAKE_BUILD_TYPE=Release \
    -G Ninja \
    $ROCM_GIT_DIR/hipamd

ninja
sudo ninja install
ninja package
sudo dpkg -i *.deb

END_TIME=`date +%s`
EXECUTING_TIME=`expr $END_TIME - $START_TIME`
echo "elapse : "$EXECUTING_TIME"s"

popd

