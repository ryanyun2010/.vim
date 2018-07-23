/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install gvim
brew install nvim
brew reinstall vim
cd
rm -r .vim
mkdir .vim
cd .vim
git clone "https://github.com/ryanyun2010/.vim"
mv vimrc .vimrc
mv gvimrc .gvimrc
cd ..
rm .vimrc
rm .gvimrc
mv .vim/.vimrc ~/.vimrc
mv .vim/.gvimrc ~/.gvimrc
cd
touch .bash_profile
echo "v-con(){vim ~/.vim/plugged/config" >> .bash_profile
touch .bashrc
echo "source .bash_profile" >> .bashrc
