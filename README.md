### Setup

```bash
git clone https://github.com/goqadze/vimrc.git ~/vimrc
cp -R ~/vimrc/{.vim,.vimrc} ~
rm -R ~/vimrc 

#Vim plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#silversearcher-ag for Ag and Greplace plugins
apt-get install silversearcher-ag

#for YouCompleteMe plugin
apt-get install cmake
apt-get install libpython2.7-dev

#install YouCompleteMe
~/.vim/bundle/YouCompleteMe/install.py --clang-completer 

vim +PluginInstall +qa
cd [any-dir] && vim
```

### Credits 
  * https://gist.github.com/JeffreyWay/68b2cdf541e2e576aa0a
