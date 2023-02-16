#!/bin/bash
conda create -y --name fastaienv
source /etc/profile.d/conda.sh
conda activate fastaienv
conda install -y pip
conda install -y ipykernel
conda install -c fastchan fastai anaconda
python -m ipykernel install --user --name fastaienv --display-name "Python (fastaienv)"
