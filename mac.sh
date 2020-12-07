#!/bin/sh
echo "NOTICE: this program automates installing the following: brew git python3. If you do not consent to this, press CTRL-C within 10 seconds."
sleep 10
if ! command -v brew &> /dev/null
then
  echo Installing brew...
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo 'export PATH="/usr/local/opt/python/libexec/bin:$PATH"' > ~/.bashrc
fi
if ! command -v python3 &> /dev/null
then
  echo "Installing python3..."
  brew install python
fi
if ! command -v git &> /dev/null
then
  echo "Installing python3..."
  brew install python
fi
cd $HOME
git clone https://github.com/MCsniperPY/MCsniperPY.git
cd $HOME/MCsniperPY
python -m pip install -r requirements.txt
echo "Installed MCsniperPY successfully to ~/MCsniperPY! Closing in 3 seconds..."
sleep 3
