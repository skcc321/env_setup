# zsh
echo "INSTALL zsh"
sudo apt install zsh -y

echo "INSTALL oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# gogh
echo "INSTALL gogh/grape terminal theme"
bash -c "TERMINAL='gnome-terminal' $(curl -sLo- https://git.io/vQgMr)"


# vim
echo "INSTALL curl"
sudo apt-get install curl -y

echo "INSTALL ag"
sudo apt-get install silversearcher-ag #install ag

echo "INSTALL cmake"
sudo apt-get install build-essential cmake -y #install build-essential cmake

echo "INSTALL python-dev"
sudo apt-get install python-dev -y #install python-dev

echo "INSTALL vim-gnome"
sudo apt-get install vim-gnome -y #install vim

echo "INSTALL plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim #copy plug

echo "CLONE vimrc"
mkdir ~/.vim/config
git clone https://github.com/skcc321/vimrc.git ~/.vim/config/
ln -s ~/.vim/config/vimrc ~/.vimrc
vim +PlugInstall +qall

echo "GET xterm-256color-italic"
wget https://gist.githubusercontent.com/sos4nt/3187620/raw/8e13c1fec5b72d415ed2917590348451de5f8e58/xterm-256color-italic.terminfo
tic xterm-256color-italic.terminfo


# tmux
echo "INSTALL tmux"
sudo apt install -y tmux #install tmux

echo "INSTALL tpm (tmux plugin manager)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm #install tpm

echo "CLONE tmux.conf"
mkdir ~/.tmux/config #create conf dir
git clone https://github.com/skcc321/tmux.git ~/.tmux/config/ #download config
ln -s ~/.tmux/config/tmux.conf ~/.tmux.conf #make softlink to conf
echo "tmux is almost ready. run tmux and Ctrl-h + I to install it's plugins"


# git
echo "SETUP git"
git config --global color.ui true #color.ui true
git config --global user.email skcc321@gmail.com #user.email
git config --global user.name rafael #user.name
git config --global alias.co checkout #checout alias
git config --global alias.br branch #branch alias
git config --global alias.ci commit #commit alias
git config --global alias.st status #status alias
git config --global alias.unstage 'reset HEAD --' #unstage > reset HEAD --

