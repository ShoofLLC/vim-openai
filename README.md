# vim-openai

## Description
A vim plugin for openai codex. 

This plugin was also written with the help of codex... so yeah, robots making robots :)

## Installation

In order for the plugin to work, you need to set the "OPENAI_API_KEY" environment variable to your api key (see [openai developer quickstart](https://beta.openai.com/docs/developer-quickstart))

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
call dein#install('ShoofLLC/vim-openai')
```

## Usage
The plugin provides one command "CodexHelp".
An example of how to map this command is found in [vim-openai.vim](https://github.com/ShoofLLC/vim-openai/blob/main/plugin/vim-openai.vim)

Visually select some text then press F7 to use the selected text as prompt to open ai codex.

## Known Issues
The python dependencies have to be installed manually.

This is a very early version of the plugin so everything can go wrong.

## Disclaimer
A lot of snippets were taken and modified from [learn vimscript the hard way](https://learnvimscriptthehardway.stevelosh.com/chapters/34.html) 
