#! /bin/bash
FOUND_INSTALL="$(find . -iwholename "*bin/python3*")" 
if [[ -n $FOUND_INSTALL ]] then
  echo "INSTALLAZIONE GIA TROVATA"
  echo $FOUND_INSTALL
  kill -INT $$
fi
sudo apt install pip
pip install libcairo2-dev # oer graphics backend
pip install venv
echo "Insert virtual env desired name" 
read envname
python3 -m venv $envname
source $envname/bin/activate
touch .env
echo "ENV_NAME=$envname" > .env
touch .gitignore
echo "$envname/" > .gitignore
echo ".ipynb_checkpoints/" > .gitignore
pip install -r requirements.txt
deactivate
