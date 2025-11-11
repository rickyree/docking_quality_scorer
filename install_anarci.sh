#!/bin/bash

python3 -m venv docking_quality_scorer
source docking_quality_scorer/bin/activate
pip install -r requirements.txt
git submodule init
git submodule update
cd ANARCI
python setup.py install
cd ..
