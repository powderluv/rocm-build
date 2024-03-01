#!/bin/bash

export ROCM_INSTALL_DIR=/app/anush/rocm
export ROCM_MAJOR_VERSION=6
export ROCM_MINOR_VERSION=1
export ROCM_PATCH_VERSION=0
export ROCM_LIBPATCH_VERSION=60100
export CPACK_DEBIAN_PACKAGE_RELEASE=65
export ROCM_PKGTYPE=DEB
export ROCM_GIT_DIR=/app/anush/git/rocm
export ROCM_BUILD_DIR=/app/anush/rocm-output/build
export ROCM_PATCH_DIR=/app/anush/rocm-output/patch
export AMDGPU_TARGETS="gfx90a"
export PATH=$PATH:$ROCM_INSTALL_DIR/bin:$ROCM_INSTALL_DIR/llvm/bin:$ROCM_INSTALL_DIR/hip/bin:$CMAKE_DIR/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/app/anush/rocm/lib:/app/anush/rocm/hip/lib
