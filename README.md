# XiangShan ready-to-run binaries

This repo includes some prebuilt workloads and difftest reference libaries. Please refer to [XiangShan-doc](https://xiangshan-doc.readthedocs.io/zh-cn/latest/tools/xsenv/) to learn how to use them.

This repo may be abandoned in feature, as we are trying to provide prebuilt binaries through Github release.

## Prebuilt difftest reference libaries
* `riscv64-nemu-interpreter-so`
  * NEMU difftest reference library
  * Built via the ci of [OpenXiangShan/NEMU](https://github.com/OpenXiangShan/NEMU).
* `riscv64-nemu-interpreter-dual-so`
  * NEMU difftest reference library with dual core difftest support.
* `riscv64-spike-so`
  * SPIKE difftest reference library
  * Built via the ci of [OpenXiangShan/riscv-isa-sim](https://github.com/OpenXiangShan/riscv-isa-sim).

## Prebuilt workloads
* `linux.bin`
  * Simple Linux boot-up test.
  * OpenSBI v1.4 + Linux 6.1.83 + print Hello
  * ~~Built accodring to [XiangShan-doc](https://xiangshan-doc.readthedocs.io/zh-cn/latest/tools/linux-kernel-for-xs/)~~
    * The document has not updated for OpenSBI yet.
* `microbench.bin`
  * Baremental test-scale microbench workload
  * Built via the ci of [OpenXiangShan/nexus-am](https://github.com/OpenXiangShan/nexus-am), application is `apps/microbench`
* `coremark-2-iteration.bin`
  * Baremental 2-iteration Coremark workload
  * Built via the ci of [OpenXiangShan/nexus-am](https://github.com/OpenXiangShan/nexus-am), application is `apps/coremark`
* `copy_and_run.bin`
  * Copy 1-iteration coremark from flash to memory, and run it.
  * Built via the ci of [OpenXiangShan/nexus-am](https://github.com/OpenXiangShan/nexus-am), application is `apps/loader`
* `flash_recursion_test.bin`
