# dotfiles
========

## Installation
Warning: This will overwrite your local dotfiles!

```bash
git clone --no-checkout git@github.com:dominikwinter/dotfiles.git
cd dotfiles
git config core.worktree ~

git fetch --all
git reset --hard origin/master

cd ~

git clone -q https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

mkdir -p ~/.vim/colors
wget -qO ~/.vim/colors/monokai.vim https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
git clone -q https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

```
