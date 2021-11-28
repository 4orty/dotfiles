brew install autojump direnv
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting
echo "source $PWD/.zshrc" > ~/.zshrc
echo "source $PWD/.zshrc_custom" >> ~/.zshrc
echo "########## 4orty omz installed successfully ##########"
