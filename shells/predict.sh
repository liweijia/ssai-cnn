#! /bin/bash

dname=MnihCNN_multi_2015-12-14_01-30-46
epoch=204
model=MnihCNN_multi
dataset=merged
channels=3

python scripts/predict.py \
--model results/${dname}/${model}.py \
--param results/${dname}/epoch-${epoch}.model \
--test_sat_dir data/mass_${dataset}/test/sat \
--channels ${channels} \
--offset 8
