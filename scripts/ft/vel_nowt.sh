#!/bin/bash

source env/bin/activate
which python

# Cheetah vel multiseed fine-tuning (from random/online data)
########
# NO WEIGHT TRANSFORM
########
. scripts/runner.sh \
  macaw_vel_iid_ft_seeds_random_nowt \
  log \
  config/cheetah_vel/40tasks_offline.json \
  config/alg/standard_rand_inner.json \
  config/alg/overrides/vel_ft_seeds_random_nowt.json
