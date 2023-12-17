#!/bin/bash
if ! [ -x "$(command -v zsh)" ]; then
  sudo apt install zsh -y
fi

if ! [ -x "$(command -v curl)" ]; then
  sudo apt install curl -y
fi

if ! [ -x "$(command -v grc)" ]; then
  sudo apt install grc -y
fi

chsh -s $(which zsh)

if sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended; then
    echo "Oh My Zsh installed !"
    cp $PWD/Bigyls.zsh-theme ~/.oh-my-zsh/themes
    cp $PWD/zshrc ~/.zshrc

    git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

    echo -e "\n\n\033[0;31m/!\ Pealse logout/login to finish the installation /!\\"
else
  cp $PWD/Bigyls.zsh-theme ~/.oh-my-zsh/themes
  cp $PWD/zshrc ~/.zshrc

  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

  echo -e "\n\n\033[0;31m/!\ Pealse logout/login to finish the installation /!\\"
fi
