# nvim-suleiman
suleiman.jpのneovim設定

# インストール
## 1. 必要なパッケージをインストール
以下のパッケージをインストール
```
sudo apt install ripgrep
```
NerdFontのインストールも必要。suleimanは[UDEV Gothic](https://github.com/yuru7/udev-gothic)を使っている。
## 2. neovimをインストール
neovimの最新をインストール
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim
```

[Packer](https://github.com/wbthomason/packer.nvim)も入れよう
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
## 3. configをコピーする
`~/.config/nvim`にcloneする

```
cd ~/.config/nvim
git clone git@github.com:suleiman01x/nvim-suleiman.git
```

## 4. Packerでプラグインをインストール
neovimを開き、`~/.config/nvim/lua/suleiman/packer.lua`まで移動し、以下のコマンドを実行
```
:so
:PackerSync
```
