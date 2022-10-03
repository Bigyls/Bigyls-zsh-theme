Personnal zsh theme based on "lpha3cho Oh-My-Zsh theme for pentesters".

This is a modified version of the intheloop theme, with date, time, and IP address added for penetration testing logging.

![[ParoaPe-zsh-theme-screenshot.png]]

If you're not already using Zshell, switch to it by opening a terminal and enter: `chsh -s $(which zsh)`. Then logout and login. Don't forget to copy anthing impotant like aliases over from `~/.bashrc` to `~/.zshrc`. Note: Kali Linux uses Zshell by default.

Install Oh My Zsh: [https://ohmyz.sh/](https://ohmyz.sh/)

Copy the file lpha3ch0.zsh-theme to `~/.oh-my-zsh/themes`

By default it's configured to include the IP address of eth0 for Internal network pentests, so change the network adapter in line 13 if needed.

For External network pentests, comment out lines 13 and 14, and uncomment lines 16 and 17 to include your Internet IP address in the prompt.