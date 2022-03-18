# NeoVim Config

## Installation

Download latest nvim appimage:

    ```
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    mv nvim.appimage ~/.local
    sudo ln -s ~/.local/nvim.appimage /usr/local/bin/nvim
    ```

Clone this repository into config directory

  ```
  git clone git@github.com:mfyfe/nvim.git .config/nvim
  ```

Install Packer plugin manually

    ```
    git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```

Launch nvim and install plugins

    ```
    :PackerInstall
    ```

That should do it! Restart nvim to confirm.

If there are plugin errors on load, try commenting them out in 
`~/.config/nvim/lua/config/plugins.lua` and restarting nvim.
Sometimes plugins become outdated in the fast moving world of Neovim!
