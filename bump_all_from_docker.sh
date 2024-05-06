#!/usr/bin/env bash
docker build -t xs-ready-to-run-env . && \
docker run -it --rm --volume=$(pwd):/root/workbench --workdir /root/workbench xs-ready-to-run-env bash -l auto_bump.sh
