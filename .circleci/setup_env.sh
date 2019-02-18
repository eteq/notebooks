#!/bin/bash

if [[ ! -d /opt/conda/envs/notebooks_env ]]; then
    conda info --envs
    conda env update --file=environment.yml
    source activate notebooks_env
    conda info --envs
    pip install k2flix
    pip install git+https://github.com/eteq/nbpages.git
    pip install astroquery --pre
    pip install astroquery --upgrade
else
    echo "Using cached miniconda environment";
fi
