let s:plugin_root_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

vnoremap <F7> :<c-u>call <SID>CodexHelp(visualmode())<cr>

function! s:CodexHelp(type)
    let saved_unnamed_register = @@
    
    if a:type ==# 'v'
        normal! `<v`>y`]
    elseif a:type ==# 'V'
        normal! `<v`>y`]
    elseif a:type ==# 'char'
        normal! `[y`]
    else
        return
    endif

py3 << EOF
import sys
from os.path import normpath, join
import vim
plugin_root_dir = vim.eval('s:plugin_root_dir')
python_root_dir = normpath(join(plugin_root_dir, '..', 'python'))
sys.path.insert(0, python_root_dir)
import cli_tool 
response = cli_tool.get_response(vim.eval("@@"))
response = response.replace("'", "''")
vim.command(f"let @@ = '{response}'")
EOF
    
    normal! p

    let @@ = saved_unnamed_register

endfunction
