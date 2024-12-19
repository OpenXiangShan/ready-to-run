ready_to_run_home=$(pwd)
if [ ! $SPIKE_HOME ]; then
  echo "SPIKE_HOME is not set"
else
  echo "Use $SPIKE_HOME to bump SPIKE"
  rm riscv64-nutshell-spike-so
  cd $SPIKE_HOME
  cd difftest
  make CPU=NUTSHELL -j `nproc`
  cp build/riscv64-spike-so ${ready_to_run_home}/riscv64-nutshell-spike-so
  cd ${ready_to_run_home}
  echo "${ready_to_run_home}/riscv64-nutshell-spike-so" "has been updated"
fi
