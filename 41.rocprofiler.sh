#!/bin/bash

set -e

mkdir -p $ROCM_BUILD_DIR/rocprofiler
cd $ROCM_BUILD_DIR/rocprofiler
pushd .

START_TIME=`date +%s`

cmake \
    -DPROF_API_HEADER_PATH=/home/anush/rocm/ROCclr/platform \
    -DCMAKE_PREFIX_PATH=/opt/rocm/include/hsa:/opt/rocm \
    -DCMAKE_INSTALL_PREFIX=$ROCM_INSTALL_DIR \
    -DCMAKE_BUILD_TYPE=Release \
    -DCPACK_PACKAGING_INSTALL_PREFIX=$ROCM_INSTALL_DIR \
    -DCPACK_GENERATOR=DEB \
    -G Ninja \
    $ROCM_GIT_DIR/rocprofiler
ninja
ninja package
sudo dpkg -i *.deb

END_TIME=`date +%s`
EXECUTING_TIME=`expr $END_TIME - $START_TIME`
echo "elapse : "$EXECUTING_TIME"s"

popd

