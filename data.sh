#!/bin/sh
pip install nuscenes-devkit
PYTHONPATH=. python second/create_data.py nuscenes_data_prep --root_path ../nuscenes --version "v1.0-mini" --max_sweeps=1 --dataset_name NuScenesDataset --truncate_to=2
