username=$(whoami)

# Space vim
echo 'Setting up SpaceVim'
curl -sLf https://spacevim.org/install.sh | bash
echo 'For more visit - https://spacevim.org/quick-start-guide/#linux-and-macos'

# Zsh
echo 'Setting up Zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'For more visit - https://github.com/ohmyzsh/ohmyzsh'

# Auto suggestions
echo 'Setting up Zsh Autosuggestions'
git clone https://github.com/zsh-users/zsh-autosuggestions /Users/${username}/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo 'For more visit - https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md'

# Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
