" Plug
call plug#begin()

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()

" Theme
colorscheme tokyonight
let g:lightline = {'colorscheme': 'tokyonight'}
set noshowmode
color tokyonight
set cursorline
set showmatch
set number

" Identation with spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Keybinds
" ====== tabs =====
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tk :tabnext<cr>
nnoremap <leader>tj :tabprev<cr>
" ===== telescope ====
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" ===== folder navigation =====
lua require'nvim-tree'.setup {}
nnoremap <C-n> :NvimTreeToggle<cr>
nnoremap <leader>bc :NvimTreeCollapse<cr>
" ==== code navigation ====
nnoremap <M-Up> :m-2<CR>==
nnoremap <M-Down> :m+<CR>==
