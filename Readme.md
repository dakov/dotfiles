# install zsh
chsh -s $(which zsh)

#install git ... TODO from envs
git config --global user.email "kovarikdavid1@gmail.com"
  git config --global user.name "David Kovarik"

# setting git
ln -s $PWD/.gitconfig $HOME/.gitconfig

# install oh-my-zsh
# TODO nahradit manualni instalaci
sh -c "$(curl -fsSL h
tps://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s $PWD/.zshrc $HOME/.zshrc

#vimrc + solarized
ln -s $PWD/.vimrc $HOME/.vimrc

# install pathogen (vim plugin manager)
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim-solarized
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

# vim nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
config config --local status.showUntrackedFiles no

# enable fraction scaling other than just 100% and 200% (experimental!)
gsettings set org.gnome.mutter experimental-features "['x11-randr-fractional-scaling']"
# reset:
# gsettings reset org.gnome.mutter experimental-features
# Better option is to install gnome-tweak and set custom scale factor
# 
# set terminator as default terminal
gsettings set org.gnome.desktop.default-applications.terminal exec 'terminator'

