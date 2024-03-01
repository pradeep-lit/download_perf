export ARCH=arm64
export KBUILD_BUILD_USER=pradeep
export KBUILD_BUILD_HOST=deepnote
export PATH=
"/root/toolchain/bin/:$PATH"


make
O=out ARCH=arm64 vendor/sdmsteppe-perf_defconfig vendor/sweet.config
make -j
$(nproc) \
	O=out \
	ARCH=arm64 \
	LLVM=1 \
	LLVM_IAS=1 \
	CROSS_COMPILE=aarch64-linux-gnu- \
	CROSS_COMPILE_ARM32=arm-linux-gnueabi-
