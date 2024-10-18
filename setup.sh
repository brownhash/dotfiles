username=$(whoami)

# Space vim
echo 'Setting up Neovim'
brew install neovim

# Zsh
echo 'Setting up Zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'For more visit - https://github.com/ohmyzsh/ohmyzsh'

# Auto suggestions
echo 'Setting up Zsh Autosuggestions'
git clone https://github.com/zsh-users/zsh-autosuggestions /Users/${username}/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo 'For more visit - https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md'

# Zsh Syntax highlighting
brew install zsh-syntax-highlighting
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Powerlevel10K
echo 'Setting up Powerlevel10K theme'
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
