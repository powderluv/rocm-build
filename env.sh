#!/bin/bash

export ROCM_INSTALL_DIR=$HOME/rocm
export ROCM_MAJOR_VERSION=5
export ROCM_MINOR_VERSION=7
export ROCM_PATCH_VERSION=0
export ROCM_LIBPATCH_VERSION=50200
export CPACK_DEBIAN_PACKAGE_RELEASE=65
export ROCM_PKGTYPE=DEB
export ROCM_GIT_DIR=$HOME/github/rocm
export ROCM_BUILD_DIR=$HOME/rocm-output/build
export ROCM_PATCH_DIR=$HOME/rocm-output/patch
export AMDGPU_TARGETS="gfx1100"
export PATH=$PATH:$ROCM_INSTALL_DIR/bin:$ROCM_INSTALL_DIR/llvm/bin:$ROCM_INSTALL_DIR/hip/bin:$CMAKE_DIR/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/rocm/lib:/opt/rocm/hip/lib
