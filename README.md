### Setup

```bash
git clone https://github.com/goqadze/vimrc.git ~/vimrc
cp -R ~/vimrc/{.vim,.vimrc} ~
rm -R ~/vimrc 

#Vim plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#silversearcher-ag for Ag and Greplace plugins
sudo apt-get install silversearcher-ag

#for YouCompleteMe plugin
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install cmake
sudo apt-get install libpython2.7-dev

vim +PluginInstall +qa

#install YouCompleteMe
~/.vim/bundle/YouCompleteMe/install.py --clang-completer 

cd [any-dir] && vim
```

### Credits 
  * https://gist.github.com/JeffreyWay/68b2cdf541e2e576aa0a
