ready_to_run_home=$(pwd)
if [ ! $NEMU_HOME ]; then
  echo "NEMU_HOME is not set"
else
  echo "Use $NEMU_HOME to bump NEMU"
  rm riscv64-nemu-interpreter-so
  rm riscv64-nemu-interpreter-dual-so
  cd $NEMU_HOME
  make clean
  make riscv64-xs-ref_defconfig
  make -j
  cp build/riscv64-nemu-interpreter-so ${ready_to_run_home}
  make clean
  make riscv64-dual-xs-ref_defconfig
  make -j
  cp build/riscv64-nemu-interpreter-so ${ready_to_run_home}/riscv64-nemu-interpreter-dual-so
  cd ${ready_to_run_home}
  echo ${ready_to_run_home} "has been updated"
fi