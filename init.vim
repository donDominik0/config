
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
":set smarttab
:set expandtab
:set softtabstop=4
:set mouse=a
:set splitbelow

call plug#begin(stdpath('data') . '/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

Plug 'https://github.com/farmergreg/vim-lastplace.git' " Vim last place
Plug 'https://github.com/vimwiki/vimwiki.git' " VimWiki
Plug 'https://github.com/junegunn/goyo.vim.git' " Goyo
Plug 'https://github.com/jiangmiao/auto-pairs.git' " Auto-pairs	

" LaTeX
Plug 'https://github.com/lervag/vimtex.git'
Plug 'https://github.com/SirVer/ultisnips.git'

"Plug 'https://github.com/xuhdev/vim-latex-live-preview.git' " LaTeX

set encoding=UTF-8

call plug#end()


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap ŧ :sp \| terminal

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"autocmd Filetype tex setl updatetime=1
"let g:livepreview_previewer = 'open -a Preview'

"LaTeX
map ¢ :! pdflatex %<CR><CR>
map þ :! mupdf %<.pdf & disown<CR><CR>
