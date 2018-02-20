## Description

Generic log syntax highlighting for Vim. A set of simple syntax highlighting
rules that should work well for a wide variety of log formats.

This syntax file will highlight:
 * Log level indicators (`DEBUG`, `INFO`, `ERROR`, etc)
 * IDs (between square brackets)
 * Strings
 * Dates and times in several formats

![Syntax screenshot](sample.png)

Based on [dzeban/vim-log-syntax](https://github.com/dzeban/vim-log-syntax),
which is based on messages.vim - syntax file for highlighting Linux kernel
messages.

## Installation

You can install this syntax file manually or with
[Pathogen](https://github.com/tpope/vim-pathogen).

### Manual Installation

 1. Copy (or symlink) [syntax/log.vim](syntax/log.vim) to `~/.vim/syntax/log.vim`.
 2. Copy (or symlink) [ftdetect/log.vim](ftdetect/log.vim) to
    `~/.vim/ftdetect/log.vim`. **OR** add the following line to your `~/.vimrc`:

    ```
    autocmd BufNewFile,BufReadPost *.log :set filetype=log
    ```

### Pathogen Installation

```
$ cd ~/.vim/bundle
$ git clone https://github.com/mkasberg/vim-log-syntax.git
```

