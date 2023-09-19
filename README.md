# Lightweigh HIP/ROCM Runtime Build scripts

Forked from https://github.com/xuhuisheng/rocm-build

### Start

My environment is Ubuntu-23.04 / 23.10 and Gentoo

Please download sources using repo <https://rocmdocs.amd.com/en/latest/Installation_Guide/Installation-Guide.html#getting-the-rocm-source-code>,
and change the path of source in `env.sh`.

Execute `source env.sh` to setup environment variables.

Execute `bash install-dependency.sh` to install dependencies

Then execute bash scripts by order number and pass `--cmake-install` to install to a local path instead of deb packages

---

### Download sources using repo.

```
sudo apt install -y repo

mkdir -p ~/ROCm/
cd ~/ROCm/
repo init -u https://github.com/RadeonOpenCompute/ROCm.git -b roc-5.2.x
repo sync
```

### Thanks

Thanks [rigtorp](https://github.com/rigtorp) providing intial build steps <https://gist.github.com/rigtorp/d9483af100fb77cee57e4c9fa3c74245> , which contains build steps for HIP on ROCm-3.6.

Thanks [jlgreathouse](https://github.com/jlgreathouse) providing <https://github.com/RadeonOpenCompute/Experimental_ROC> , which contains build steps for ROCm-2.0.

https://github.com/xuhuisheng/rocm-build
