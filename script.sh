if [ ! -e /home/vagrant/.vim/bundle/Vundle.vim ]
then 
apt-get -y update
apt-get -y upgrade
apt-get -y install git
git clone https://github.com/VundleVim/Vundle.vim.git /home/vagrant/.vim/bundle/Vundle.vim
cp /vagrant/.vimrc /home/vagrant/.vimrc

# Installing NodeJS

curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

# Updating NPM, goes with nodeJS
npm install -y npm@latest -g

# Ubuntu vim compilation needs
apt-get build-dep -y vim-gnome
fi

# If fingerprint key is missing then generate one
if [ ! -e githubKey ]
then 	
	touch /etc/ssh/known_hosts
	ssh-keyscan github.com >> githubKey
	ssh-keygen -lf githubKey >> /etc/ssh/known_hosts 
#	chown vagrant:vagrant /home/vagrant/.ssh/known_hosts
fi

#clone git
git clone git@github.com:vim/vim.git /home/vagrant/vimsource/
#cd /home/vagrant/vimsource/
#make & make install
chown -R vagrant:vagrant /home/vagrant/*





#sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev
