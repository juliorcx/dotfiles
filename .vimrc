" Some basics
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set number relativenumber

" LATEX " 
" .tex files automatically detected
autocmd BufRead,BufNewFile *.tex set filetype=tex
" Compile document using xelatex:
autocmd FileType tex inoremap <F5> <Esc>:!pdflatex<space><c-r>%<Enter>a
autocmd FileType tex nnoremap <F5> :!pdflatex<space><c-r>%<Enter>
" Vim to R shortcuts
map <C-L> "kyy:echo system("screen -S $STY -p R -X stuff ".escape(shellescape(@k),"$"))<CR>j 
vmap <C-L> "xy:echo system("screen -S $STY -p R -X stuff ".escape(shellescape(@x."\n"),"$"))<CR>j

" MARKDOWN
autocmd FileType markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
autocmd FileType rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd Filetype rmd inoremap ;r ```{r,<space>echo=TRUE}<CR>```<CR><CR><esc>2kO


set list listchars=nbsp:¬,tab:»·,trail:·,extends:>

set background=dark
