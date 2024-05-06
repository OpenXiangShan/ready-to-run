#!/usr/bin/env bash
clone_to_tmp() {
    git clone https://github.com/OpenXiangShan/nemu.git /tmp/nemu
    git clone https://github.com/OpenXiangShan/riscv-isa-sim.git /tmp/spike
}

centos7_nemu_fixup() {
    # The old version of GNU Make in CentOS 7 will check the
    # indentation of Makefile, causing make failure after fetching the
    # berkeley-softfloat-3. This dry run fixed this by fetching the
    # dependencies for the first time.
    pushd /tmp/nemu && \
    export NEMU_HOME=/tmp/nemu && \
    make riscv64-xs-ref_defconfig && \
    (make -j `nproc` || true) && \
    popd
}

build_all() {
    export NEMU_HOME=/tmp/nemu && \
    export SPIKE_HOME=/tmp/spike && \
    ./bump-nemu.sh && \
    ./bump-spike.sh
}

clone_to_tmp && centos7_nemu_fixup && build_all
