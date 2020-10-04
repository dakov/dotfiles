set -ex;
apt update
apt install zsh git vim

# --- Primary stuff (such as vim, git, zsh, etc.)
ln -sf $PWD/.gitconfig $HOME/.gitconfig
# TODO make this somehow configurable
#git config --global user.email "kovarikdavid1@gmail.com"
#git config --global user.name "David Kovarik"

# setup zsh
ln -sf $PWD/.zshrc $HOME/.zshrc
ln -sf $PWD/.oh-my-zsh $HOME/.oh-my-zsh

# TODO: resolve this: A) as a submodule B) fork+sumodule C) just copy as-is
#git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
#git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# --  setup vim
ln -sf $PWD/.vim $HOME/.vim
ln -sf $PWD/.vimrc $HOME/.vimrc


# all setup -- set zsh as default shell
chsh -s $(which zsh)
# - konec

# --- Secondary dependencies
apt install terminator
# gsettings set org.gnome.desktop.default-applications.terminal exec 'terminator'

# to save conf run dconf dump / > settings.ini
dconf load / < dconf-settings.ini

# --- Tertiary stuff
touch ~/Templates/Empy\ Document


# TODO: platform dependent (mostly), install manually for now
# ranger
# messenger client (caprine ubuntu)
# whatsapp client (whatsdesk? - ubuntu)
# gnome tweaks (to hack around UI features)
# kodi (todo automize with stream media plugin)
# mattermost desktop
# seahorse (ubuntu keychain client)
# simplenote
# spotify
# birdtray (unbuntu)
#
