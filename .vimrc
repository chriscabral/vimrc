execute pathogen#infect()
syntax on
filetype plugin indent on

nmap <leader>l :set list!<CR>
nmap <leader>` :set list!<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

set hidden
set listchars=tab:▸\ ,eol:¬
set shiftwidth=4 softtabstop=4 tabstop=4 expandtab

if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
    filetype on
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    
    autocmd BufNewFile,BufRead *.rss setfiletype xml

endif


