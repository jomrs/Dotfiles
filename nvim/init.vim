" interface
set number

" plug
call plug#begin()
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

" theme
colorscheme tokyonight
let g:lightline = {'colorscheme': 'tokyonight'}
set noshowmode
color tokyonight
set cursorline


" Keybinds
" ====== tabs =====
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>tk :tabnext<CR>
nnoremap <Leader>tj :tabprev<CR>
" ===== telescope ====
nnoremap <Leader>ff <CMD>Telescope find_files<CR>
nnoremap <Leader>fg <CMD>Telescope live_grep<CR>
" ===== folder navigation =====
lua require'nvim-tree'.setup {}
nnoremap <Leader>bn :NvimTreeToggle<CR>
nnoremap <Leader>bc :NvimTreeCollapse<CR>
" ==== code navigation ====
nnoremap <A-k> :m-2<CR>==
nnoremap <A-j> :m+<CR>==

