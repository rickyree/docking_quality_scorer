#!/bin/bash


conda create -n docking_quality_scorer python=3.11 -y
conda activate docking_quality_scorer

pip install -r requirements.txt
