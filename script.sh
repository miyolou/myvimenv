#if [ ! -e /home/ubuntu/.vim/bundle/Vundle.vim ]
#then 
apt-get -y update
apt-get -y upgrade
apt-get -y install git
git clone https://github.com/VundleVim/Vundle.vim.git /home/ubuntu/.vim/bundle/Vundle.vim
cp /vagrant/.vimrc /home/ubuntu/.vimrc

# Installing NodeJS
apt-get install -y nodejs

# Updating NPM, goes with nodeJS
apt-get install -y npm

# Installing development tools and cmake
apt-get install -y build-essential cmake

# install Python headers
apt-get install -y python-dev python3-dev

# install tidy
apt-get install tidy

# install typescript
npm install -g typescript

# install csslint
npm install -g csslint
# Expect to run on vagrant provision

# Check whether it works before you manually do the :PluginInstall on vimrc
/home/ubuntu/.vim/bundle/youcompleteme/install.py --tern-completer


chown -R ubuntu:ubuntu /home/ubuntu/

#su ubuntu
#/home/ubuntu/.vim/bundle/



