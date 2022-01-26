#!/bin/bash

export ROCM_INSTALL_DIR=/opt/rocm
export ROCM_GIT_DIR=/home/anush/rocm
export ROCM_BUILD_DIR=/home/anush/github/rocm-build/build
export ROCM_PATCH_DIR=/home/anush/github/rocm-build/patch
export AMDGPU_TARGETS="gfx908;gfx1030"
export CMAKE_DIR=/usr/bin/cmake
export PATH=$ROCM_INSTALL_DIR/bin:$ROCM_INSTALL_DIR/llvm/bin:$ROCM_INSTALL_DIR/hip/bin:$CMAKE_DIR/bin:$PATH

