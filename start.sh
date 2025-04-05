#! /bin/bash
source .env
source "$ENV_NAME"/bin/activate
jupyter notebook
