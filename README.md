# `vimfiles`

> This are my personal Vim settings.

# Setup

## 1. Clone the repository 

```
git clone https://github.com/joelxr/vimfiles.git ~/.vim
```

## 2. Setup [Vundle](https://github.com/VundleVim/Vundle.vim)

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## 3. Setup your `.vimrc`

Open `~/.vimrc` and write the following on it:

```
source ~/.vim/vimrc
```

## 4. Install all plugins

Open Vim - ignore errors for now - type `ESC` and:

```
:PluginInstall
```

Hit enter and Vundle will do the rest.

## 5. Install `YouCompleteMe` engine

First, check if your Vim has `python3` support, that's because [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) plugin, see the documentation if you have any issues.

To install YCM engines you'll need to run:

```
cd .vim/bundle/YouCompleteMe/
./install.py --go-completer --ts-completer
```

There is a `--all` flag to install all completers.

## 6. Test it
