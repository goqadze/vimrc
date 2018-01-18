### Setup

```
git clone https://github.com/goqadze/vimrc.git ~/vimrc
cp -R ~/vimrc/{.vim,.vimrc} ~
rm -R ~/vimrc 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
apt-get install silversearcher-ag
vim .vimrc
:PluginInstall
:wq
cd [any-dir] && vim
```

### Credits 
  * https://gist.github.com/JeffreyWay/68b2cdf541e2e576aa0a

