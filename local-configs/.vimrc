" *****************************************************************
"
" -- for puppet file type support
" -- see https://github.com/puppetlabs/puppet-syntax-vim
"
" *****************************************************************
"
" -- for terraform file type support
" -- see https://github.com/hashivim/vim-hashicorp-tools
"
" *****************************************************************
"
" -- for ruby file type support
" -- see https://github.com/vim-ruby/vim-ruby
"
" *****************************************************************


" -- toggle auto indenting for code paste
" -- REF http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
nnoremap <INSERT> :set invpaste paste?<CR>
set pastetoggle=<INSERT>
set showmode


" -- Enable file type detection
filetype on
filetype plugin indent on

set fileformat=unix

" default indentation
set ts=2 sts=2 sw=2 expandtab

" -- show cursor line - easier readability
set cursorline

" -- line number
"set number

" -- always show full path of file
set laststatus=2


" Only do this part when compiled with support for autocommands
if has("autocmd")

  " -- Syntax of these languages is fussy over tabs Vs spaces
  "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  "autocmd FileType python setlocal ts=2 sts=2 sw=2 expandtab

  " -- Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType css setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " -- Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml

endif


