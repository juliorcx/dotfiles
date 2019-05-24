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

" Spelling
map <F7> :setlocal spell! spelllang=fr<CR>

" LATEX " 
" .tex files automatically detected
autocmd BufRead,BufNewFile *.tex set filetype=tex
" Compile document using xelatex:
autocmd FileType tex inoremap <F5> <Esc>:!pdflatex<space><c-r>%<Enter>a
autocmd FileType tex nnoremap <F5> :!pdflatex<space><c-r>%<Enter>

" MARKDOWN
autocmd FileType markdown,rmd map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
autocmd FileType markdown,rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd Filetype rmd inoremap ;r ```{r,<space>echo=TRUE}<CR>```<CR><CR><esc>2kO

set list listchars=nbsp:¬,tab:»·,trail:·,extends:>

set bg=dark

set foldmarker=/*,*/
set foldnestmax=10
set nofoldenable
set foldlevel=2

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

set path=**
set expandtab
set noswapfile
set hidden
let g:netrw_liststyle=3 "tree style

" Update binds when sxhkd is update
        autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &
