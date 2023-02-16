#!/bin/bash

set -e

# This script installs fastai, ipykernel packages in compute instance azureml_py38 environment.

sudo -u azureuser -i <<'EOF'

PYKERNAL="Python (fastaienv)"
ENVIRONMENT=fastaienv 
conda create -y --name "$ENVIRONMENT"
conda activate "$ENVIRONMENT"
conda install -y pip
conda install -y ipykernel
conda install -y -c fastchan fastai anaconda
python -m ipykernel install --user --name fastaienv --display-name "$PYKERNAL"
conda deactivate
EOF