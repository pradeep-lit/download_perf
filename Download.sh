git clone -b uvite https://github.com/basamaryan/android_kernel_xiaomi_sm6150.git
mkdir toolchain
cd toolchain
wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/tags/android-14.0.0_r28/clang-r487747c.tar.gz
tar -xvf clang-r487747c.tar.gz