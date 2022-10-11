#!/bin/bash
cd ~/app

echo "%%% Cleaning up"
sudo rm -rf pys/
sudo kill -9 $(ps -A | grep uvicorn | awk -F ' ' '{ print $1 }') 

echo "%%% Pulling code"
GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no"  git clone git@github.com:AhmadElsagheer/pys.git
cd pys/

echo "%%% Installing dependencies"
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

echo "Starting the server"
sudo -E env PATH=$PATH nohup uvicorn server:app --host 0.0.0.0 --port 80  &
sleep 5

echo "Done!"
