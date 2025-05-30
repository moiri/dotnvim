# My Neovim Configuration

This is based on and inspired by the following repos:
- https://github.com/nvim-lua/kickstart.nvim
- https://github.com/ThePrimeagen/init.lua

## Installation
### Install Neovim
This config was setup for Neovim v0.11.1 which I compiled from source because the package included in the debian 12 repo was outdated.

### Install Dependencies
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- Install a nerd font that fits the terminal font you are using (e.g. DejaVuSansMono):
    ```sh
    wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/DejaVuSansMono.zip && cd ~/.local/share/fonts && unzip DejaVuSansMono.zip && rm DejaVuSansMono.zip && fc-cache -fv
    ```
- To improve performance of telescope install `fd`, a faster alternative of `find`:
    ```sh
    sudo apt install fd-find
    ```
- For typescript you need `npm`. To resolve a warning in `:checkhealth` install
    ```sh
    npm install -g neovim
    ```

### Install Config
```sh
git clone git@github.com:moiri/dotnvim.git ~/.config/nvim
```
