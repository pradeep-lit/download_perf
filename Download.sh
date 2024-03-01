git clone -b uvite https://github.com/basamaryan/android_kernel_xiaomi_sm6150.git
mkdir toolchain
cd toolchain
wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/tags/android-14.0.0_r28/clang-r487747c.tar.gz
tar -xvf clang-r487747c.tar.gz -C /root/toolchain/clang/
cd android_kernel_xiaomi_sm6150
git fetch origin lineage-20
git cherry-pick 15e92e45671ed0595cf365faa12c2c0c82bfc2b3^..58750d8999cd12557503e9021b23ad4b58afde05
