#!/bin/bash

conda create -n docking_quality_scorer python=3.11 -y
conda activate docking_quality_scorer

pip install -r requirements.txt
git submodule init
git submodule update

conda install -c conda-forge biopython -y
conda install -c bioconda hmmer=3.3.2 -y
cd ANARCI
python setup.py install
cd ..
