#!/bin/bash

set -e

# This script installs fastai, ipykernel packages in compute instance azureml_py38 environment.

sudo -u azureuser -i <<'EOF'

ENVIRONMENT=fastaienv 
conda create -y --name "$ENVIRONMENT"
conda activate "$ENVIRONMENT"
conda install -y pip
conda install -y ipykernel
conda install -c fastchan fastai anaconda
python -m ipykernel install --user --name fastaienv --display-name "Python (fastaienv)"
conda deactivate
EOF