apt update
apt install zsh git vim

# todo: this should be configurabel -- possibly envs
git config --global user.email "kovarikdavid1@gmail.com"
git config --global user.name "David Kovarik"

ln -s $PWD/.gitconfig $HOME/.gitconfig

# setup zsh
ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/.oh-my-zsh $HOME/.oh-my-zsh


# --  setup vim
ls -s $PWD/.vim $HOME/.vim
ln -s $PWD/.vimrc $HOME/.vimrc


# all setup -- set zsh as default shell
chsh -s $(which zsh)




# Secondary dependencies
apt install terminator
gsettings set org.gnome.desktop.default-applications.terminal exec 'terminator'

