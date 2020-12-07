#!/bin/sh
if ! command -v python3 &> /dev/null
then
  echo "python3 missing! Install 'python3' using your distribution's package manager and run again."
  exit 1
fi
if ! command -v git &> /dev/null
then
  echo "git missing! Install 'git' using your distribution's package manager and run again."
  exit 1
fi
cd $HOME
git clone https://github.com/MCsniperPY/MCsniperPY.git
cd $HOME/MCsniperPY
python -m pip install -r requirements.txt
echo "Installed MCsniperPY successfully to ~/MCsniperPY! Closing in 3 seconds..."
sleep 3
