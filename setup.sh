# Must be using VirtualBox as provider
# Must run vagrant up from appropriate directory
#   package.json file should be in this directory (it may be changed before running vagrant)
#
# Do an apt-get update
echo "************Performing apt-get update..."
sudo apt-get update
#
# Install git
echo "************Installing git..."
sudo apt-get -y install git
git --version
# Install curl
echo "************Installing curl..."
sudo apt-get -y install curl
curl -V
#
# Create ssh key pair if you want and put in vagrant's file
#ssh-keygen -t rsa -N "" -f /home/vagrant/.ssh/id_rsa
#
echo "************Getting node package from nodesource ..."
# Get stable version of node (now 4.2.0) and npm
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
# Install node and npm
echo "************Installing node ..."
sudo apt-get install -y nodejs
node -v
# Update node to latest version (now 3.6.0)
echo "************Installing npm globally ..."
sudo npm install npm -g
npm -v
# Install httpserver to allow opening app
echo "************Installing httperver globally ..."
sudo npm install httpserver -g
#
# Install jshint globally
echo "************Installing jshint globally ..."
sudo npm install jshint -g
#
# Install express framework locally
echo "************Installing express application framework globally ..."
npm install express -g
#
# NOTES
#
# Copy npm package information created offline into developer default directory since npm needs a package.json file
# cp /vagrant/*.json .
#
# Sublime or another editor can be used on local workstation
# Save file in [vagrantDir] and they will be synced to
# /vagrant directory on the vm box
