SETUP_FILE=/home/vagrant/setup.sh

# custom.sh is run as the root user. Create a shell script that we can run as
# the vagrant user
cat <<EOF > setup.sh
# Clone settings repo
git clone https://github.com/Serneum/settings.git

# Copy over Git settings
cd ~/settings/git
sed -i.bak "s/USER_NAME/Chris Rees/g" .gitconfig
sed -i.bak "s/USER_EMAIL/crees@covermymeds.com/g" .gitconfig
mv .gitconfig ~/.gitconfig
mv .gitignore ~/.gitignore

# Copy over bash settings
cd ../home
mv .bashrc ~/.bashrc
mv .bash ~/.bash

# Set up Vim, Vundle, and install plugins from the .vimrc file
mkdir ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv .vimrc ~/.vimrc
vim +PluginInstall +qall

# Remove the cloned repo
cd ..
rm -rf ~/settings
EOF

# Give permissions for the script to the vagrant user
chown vagrant $SETUP_FILE
chmod +x $SETUP_FILE

# Run the script
su - vagrant -c "sh $SETUP_FILE"
rm $SETUP_FILE
