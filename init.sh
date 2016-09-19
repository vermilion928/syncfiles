#! /bin/bash
mkdir -p ~/.vim/bundle
mkdir -p ~/.tmux/plugins/tpm

git config --global user.name 'akai'
git config --global core.editor 'vim'
git config --global alias.co checkout
git config --global push.default simple

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim &
git clone https://github.com/Shougo/vimproc.vim ~/.vim/bundle/vimproc && cd ~/.vim/bundle/vimproc && make && cd &
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm &
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build &
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O git-completion.bash &

ln -s ~/dotfiles/.vimrc ~/.vimrc &
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.rubocop.yml ~/

echo 'source ~/dotfiles/git-completion.bash' >> ~/.bashrc
echo 'export PATH="$HOME/bin:$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
echo 'alias tmux="tmux -2"' >> ~/.bashrc

exit
