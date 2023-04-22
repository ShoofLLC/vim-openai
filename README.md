# vim-openai

## Description
A neovim plugin for openai codex. 

This plugin was also written with the help of codex.

## Installation

In order for the plugin to work, you need to set the "OPENAI_API_KEY" environment variable to your api key (see [openai introduction](https://platform.openai.com/docs/api-reference/introduction))

You also need (currently) to add a few packages to your nvim-python3 environment:
- openai package
- click

both can be installed with pip:
```bash
pip install click openai
```

For more information on python in nvim read the provider help
```vim
:help provider-python
```


### install using dein:
```
call dein#add('ShoofLLC/vim-openai', {'merged': 0})
```
### install using VimPlug:
```
Plug 'ShoofLLC/vim-openai'
```

### install using Vundle:
```
Plugin 'ShoofLLC/vim-openai'
```

### install using NeoBundle:
```
NeoBundle 'ShoofLLC/vim-openai'
```

## Usage
The plugin provides one command "CodexHelp".
An example of how to map this command is found in [vim_openai.vim](https://github.com/ShoofLLC/vim-openai/blob/main/plugin/vim_openai.vim)

Visually select some text then press F7 to use the selected text as prompt to open ai codex.

You can also combine the text selection and the command in one go
```
" This command will select the entire file and send it to openai-codex
" Be careful not to use it on files containing sensitive information
nnoremap <c-n> gg0vG$h:<c-u>call CodexHelp(visualmode())<CR> " Map Ctrl-n
```

## Known Issues
The python dependencies have to be installed manually.

This plugin has only been tested with nvim 0.5+, this is a very early version of the plugin so everything can go wrong.

## Disclaimer

This software is provided as is, with no warranty of any kind, express or
implied, including but not limited to the warranties of merchantability,
fitness for a particular purpose and noninfringement. in no event shall the
authors or copyright holders be liable for any claim, damages or other
liability, whether in an action of contract, tort or otherwise, arising from,
out of or in connection with the software or the use or other dealings in
the software. 

## Thanks
A lot of snippets were taken and modified from [learn vimscript the hard way](https://learnvimscriptthehardway.stevelosh.com/chapters/34.html) so I would like to thank the authors (Steve Losh).
