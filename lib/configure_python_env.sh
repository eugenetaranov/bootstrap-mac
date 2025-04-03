#!/bin/sh

python -m venv ~/.venv

# shellcheck disable=SC1090
. ~/.venv/bin/activate

pip install --upgrade pip
pip install requests boto3 botocore loguru ipython

deactivate
