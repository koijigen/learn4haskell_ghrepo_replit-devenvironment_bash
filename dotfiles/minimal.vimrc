" install: curl https://raw.githubusercontent.com/prabirshrestha/vim-lsp/master/minimal.vimrc -o /tmp/minimal.vimrc
" uninstall: rm /tmp/plug.vim && rm -rf /tmp/plugged
" run vim/neovim with minimal.vimrc
" vim -u minimal.vimrc
" :PlugInstall

set nocompatible hidden laststatus=2


if !filereadable(expand('/home/runner/learn4haskellghreporeplit-devenvironmentbash/dotfiles/plug.vim'))
  silent !curl -fLo /home/runner/learn4haskellghreporeplit-devenvironmentbash/dotfiles/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

source /home/runner/learn4haskellghreporeplit-devenvironmentbash/dotfiles/plug.vim

call plug#begin('/home/runner/learn4haskellghreporeplit-devenvironmentbash/dotfiles/.vim.plugged')
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

imap <c-space> <Plug>(asyncomplete_force_refresh)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif
