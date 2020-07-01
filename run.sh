#!/bin/sh
MODEL_DIR=$(mktemp -u)
echo "Output logs available in $MODEL_DIR"
cd $(dirname $(realpath $0))
PYTHONPATH=. python second/pytorch/train.py  train --config_path second/configs/nuscenes/truncated.fhd.config --model_dir "$MODEL_DIR" "$@"
