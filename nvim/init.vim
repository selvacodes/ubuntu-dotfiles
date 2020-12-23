call plug#begin('~/.local/share/nvim/plugged')
"Plug 'w0rp/ale'
"Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dense-analysis/ale' " Asynchronous Lint Engine.

Plug 'neovim/nvim-lspconfig'
Plug 'RishabhRD/nvim-lsputils'

Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'sainnhe/edge'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/completion-treesitter'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'steelsojka/completion-buffers'
Plug 'kristijanhusak/completion-tags'
Plug 'aca/completion-tabnine', { 'do': './install.sh' }
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'nvim-lua/lsp_extensions.nvim'

Plug 'tjdevries/colorbuddy.nvim'
Plug 'rockerBOO/boo-colorscheme-nvim'


Plug 'RishabhRD/popfix'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'yuttie/comfortable-motion.vim'

Plug 'gcmt/wildfire.vim'
Plug 'Iron-E/nvim-highlite'

Plug 'psliwka/vim-smoothie'
Plug 'rust-lang/rust.vim'

" Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'farmergreg/vim-lastplace.git'
" Plug 'airblade/vim-gitgutter' 

Plug 'justinmk/vim-sneak'
Plug 'drzel/vim-line-no-indicator'

Plug 'AndrewRadev/tagalong.vim' 

" Search
Plug 'wincent/loupe'
Plug 'wincent/scalpel'
Plug 'dyng/ctrlsf.vim'

Plug 'vim-ctrlspace/vim-ctrlspace'


" Fern
Plug 'lambdalisue/fern.vim' 
Plug 'lambdalisue/fern-git-status.vim' 
Plug 'lambdalisue/fern-hijack.vim' 
Plug 'lambdalisue/fin.vim'

" sidebar
Plug 'mhinz/vim-signify'

" comments
Plug 'tpope/vim-commentary'

" quickfix
Plug 'romainl/vim-qf'


" Files and references
Plug 'nvim-telescope/telescope.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'pechorin/any-jump.vim'

" colors and icons
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'kyazdani42/nvim-web-devicons' " lua
Plug 'ishan9299/modus-theme-vim', {'branch': 'stable'}

" format
Plug 'sbdchd/neoformat'

" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tabs
Plug 'zefei/vim-wintabs'
Plug 'zefei/vim-wintabs-powerline'

" Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-eunuch' "unix operations
Plug 'tpope/vim-vinegar' "netrw settings

" train
Plug 'tjdevries/train.nvim'
Plug 'nvim-treesitter/nvim-tree-docs'

call plug#end()

" => Settings
"""""""""""""
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHld & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
" set shortmess+=c

" always show signcolumns
set signcolumn=yes

if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
set background=light
colorscheme highlite



" => Remaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""
" With a map leader it's possible to do extra key combinations
let mapleader = " "
let g:mapleader = " "

nnoremap <SPACE> <Nop>

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>W :wall!<cr>

nmap <leader>q :q<cr>

" change colon
imap jj <esc>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

"" file format Typw/JavaScript

let g:defx_icons_enable_syntax_highlight = 0
"nmap - :Defx -show-ignored-files `expand('%:p:h')` -search=`expand('%:p')` <cr>
" nmap - :FileBeagle<cr>
" nmap _ :FileBeagleBufferDir<cr>


"" remove Highlight
nnoremap <leader>/ :noh<cr>

" Splits
nnoremap <leader>s <C-w>v<C-w>l
nnoremap <leader>; <C-w><C-w>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>x <C-w>q

"stay in word after search
nnoremap * *``

"No operations
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" => vimrc
"""""""""""""""""""""
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

syntax enable
syntax on

" => LSP advanced functionalities

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gt  <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> ga     <cmd>lua vim.lsp.buf.code_action()<CR>


nnoremap <leader>r    :ALERename<CR>

" => Completion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <c-p> completion#trigger_completion()

 " Matching Strategy
 let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
 let g:completion_matching_ignore_case = 1
 let g:completion_enable_auto_hover = 1
 let g:completion_timer_cycle = 80 "default value is 80
 let g:completion_trigger_character = []
 let g:completion_enable_auto_paren = 1
 let g:completion_trigger_keyword_length = 1


 set updatetime=50
 set completeopt=menu,menuone,noinsert,noselect


 let g:completion_chain_complete_list = {
       \ 'default' : {
       \   'default': [
       \       {'complete_items': ['lsp', 'snippet']},
       \       {'complete_items': ['buffers']},
       \       {'mode': '<c-p>'},
       \       {'mode': '<c-n>'},
       \       {'mode': 'dict'}
       \   ],
       \   'string' : [
       \       {'complete_items': ['path'], 'triggered_only': ['/']}]
       \   }}

 autocmd BufEnter * lua require'completion'.on_attach()

 lua <<EOF

-- nvim_lsp object
local nvim_lsp = require'lspconfig'

local onrust_attach = function(client)
    require'completion'.on_attach(client)
end

nvim_lsp.rls.setup{on_attach=onrust_attach}

nvim_lsp.rust_analyzer.setup({ on_attach=onrust_attach,
 settings =  {
      ["rust-analyzer"] = {
        ["rust-analyzer.inlayHints.chainingHints"] = "true",
        ["rust-analyzer.inlayHints.enable"] = true,
        ["rust-analyzer.cargo.allFeatures"] = true,
	["rust-analyzer.inlayHints.maxLength"] = 2000,
	["rust-analyzer.inlayHints.typeHints"] = true,
	["rust-analyzer.inlayHints.parameterHints"] = true,
	["rust-analyzer.diagnostics.enable"] = false,
      }
    }

 })
EOF

lua <<EOF

function on_attach_callback(client, bufnr)
  -- If you use completion-nvim/diagnostic-nvim, uncomment those two lines.
  -- require('diagnostic').on_attach()
  require'completion'.on_attach(client)
  require'folding'.on_attach(client)
end

require'lspconfig'.tsserver.setup{on_attach=on_attack_callback}

require'nvim-treesitter.configs'.setup {
  refactor = {
    highlight_definitions = { enable = true },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "g4",
        list_definitions = "gnD",
        list_definitions_toc = "g5",
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>",
      },
    },
  }, 
  playground = {
    enable = true,
    disable = {},
    keymaps = {
      open = 'gdd' -- Opens the playground for current buffer (if applicable)
    },
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
  }
}

require'nvim-treesitter.configs'.setup {
    incremental_selection = {
        enable = true,
        disable = {},
        keymaps = {                       -- mappings for incremental selection (visual mappings)
            init_selection = '<CR>',         -- maps in normal mode to init the node/scope selection
            node_incremental = "<CR>",       -- increment to the upper named parent
            scope_incremental = "grc",      -- increment to the upper scope (as defined in locals.scm)
            node_decremental = "<leader><CR>",       -- decrement to the previous node
        }
    },
    refactor = {
        highlight_definitions = {
            enable = true
        },
        highlight_current_scope = {
            enable = false
        },
        smart_rename = {
            enable = false,
            keymaps = {
                smart_rename = "grr"            -- mapping to rename reference under cursor
            }
        },
    },
    playground = { enable = true },
    ensure_installed = {'rust', 'c', 'lua', 'query'} -- one of 'all', 'language', or a list of languages
}
EOF

 " " => Completion END

lua <<EOF
vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
EOF

lua <<EOF
local border_chars = {
	TOP_LEFT = '┌',
	TOP_RIGHT = '┐',
	MID_HORIZONTAL = '─',
	MID_VERTICAL = '│',
	BOTTOM_LEFT = '└',
	BOTTOM_RIGHT = '┘',
}
vim.g.lsp_utils_location_opts = {
	height = 24,
	mode = 'editor',
	preview = {
		title = 'Location Preview',
		border = true,
		border_chars = border_chars
	},
	keymaps = {
		n = {
			['<C-n>'] = 'j',
			['<C-p>'] = 'k',
		}
	}
}
vim.g.lsp_utils_symbols_opts = {
	height = 24,
	mode = 'editor',
	preview = {
		title = 'Symbols Preview',
		border = true,
		border_chars = border_chars
	},
	keymaps = {
		n = {
			['<C-n>'] = 'j',
			['<C-p>'] = 'k',
		}
	}
}

function MyLspRename()
  local current_word = vim.fn.expand("<cword>")
  local plenary_window = require('plenary.window.float').percentage_range_window(0.5, 0.2)
  vim.api.nvim_buf_set_option(plenary_window.bufnr, 'buftype', 'prompt')
  vim.fn.prompt_setprompt(plenary_window.bufnr, string.format('Rename "%s" to > ', current_word))
  vim.fn.prompt_setcallback(plenary_window.bufnr, function(text)
    vim.api.nvim_win_close(plenary_window.win_id, true)

    if text ~= '' then
      vim.schedule(function()
        vim.api.nvim_buf_delete(plenary_window.bufnr, { force = true })

        vim.lsp.buf.rename(text)
      end)
    else
      print("Nothing to rename!")
    end
  end)

  vim.cmd [[startinsert]]
end
EOF

"""" Format & Cmments

noremap <silent> <leader>c :Commentary<CR>
noremap <silent> <leader>o <Nop>
noremap <silent> <leader>f <Nop>

"""" Any Jump
" Show line numbers in search rusults
let g:any_jump_list_numbers = 1

" Auto search references
let g:any_jump_references_enabled = 1

" Auto group results by filename
let g:any_jump_grouping_enabled = 0

" Amount of preview lines for each search result
let g:any_jump_preview_lines_count = 5

" Max search results, other results can be opened via [a]
let g:any_jump_max_search_results = 20

" Search references only for current file type
" (default: false, so will find keyword in all filetypes)
let g:any_jump_references_only_for_current_filetype = 1

" Disable search engine ignore vcs untracked files
let g:any_jump_disable_vcs_ignore = 0


let g:dashboard_default_executive ='clap'
map <CR> <Plug>(wildfire-fuel)


let g:clap_layout = { 'relative': 'editor' }

let g:airline_theme='monochrome'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#formatter = 'jsformatter'


"  Tabs
map <C-[> <Plug>(wintabs_previous)
map <C-]> <Plug>(wintabs_next)
nnoremap <leader>G :GitGutterDisable <BAR> :set laststatus=0 <CR>


"  CTRLSf
nmap <leader>a :CtrlSF -R ""<Left>
nmap 8 <Plug>CtrlSFCwordPath <CR>
nmap <leader>8 :Clap grep ++query=<cword><CR>

let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }
let g:ctrlsf_position = 'left'
let g:ctrlsf_search_mode = 'async'

"  Fern
nmap - :Fern . -reveal=%<CR>

" Disable listing ignored files/directories
let g:fern_git_status#disable_ignored = 1

" Disable listing untracked files
let g:fern_git_status#disable_untracked = 1

" Disable listing status of submodules
let g:fern_git_status#disable_submodules = 1

" Disable listing status of directories
let g:fern_git_status#disable_directories = 1
let g:fern#mark_symbol                       = '●'
let g:fern#renderer#default#collapsed_symbol = '+ '
let g:fern#renderer#default#expanded_symbol  = '- '
let g:fern#renderer#default#leading          = ' '
let g:fern#renderer#default#leaf_symbol      = ' '
let g:fern#renderer#default#root_symbol      = '~ '

"  telescope
lua <<EOF
require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_position = "bottom",
    prompt_prefix = "::",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "flex",
    layout_defaults = {
      -- TODO add builtin options.
    },
    prompt_title = '',
    results_title = '',
    preview_title = '',
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 20,
    width = 0.85,
    preview_cutoff = 120,
    results_height = 1,
    results_width = 0.8,
    border = {},
    results_height = 20,
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default { }, currently unsupported for shells like cmd.exe / powershell.exe,
    mappings = {
      n= {
        ["l"] = require('telescope.actions').goto_file_selection_edit,
	['v'] = require('telescope.actions').goto_file_selection_vsplit,
	['s'] = require('telescope.actions').goto_file_selection_split,
      }
    }

  }
}
EOF
nnoremap <leader>f :lua require('telescope.builtin').find_files({previewer = false})<CR>
nnoremap fg <cmd>lua require('telescope.builtin').live_grep({ prompt_prefix=🔍 })<cr>
nnoremap fb <cmd>lua require('telescope.builtin').buffers({previewer = false})<cr>

" ALE
let g:ale_fixers = {
\   'json': ['prettier'],
\   'markdown': ['prettier'],
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'css': ['prettier'],
\}

let g:ale_fix_on_save = 1

" Airline
let g:airline_section_x = '%{&filetype}'
let g:airline_section_y = '%#__accent_bold#%{LineNoIndicator()}%#__restore__#'
let g:airline_section_z = '%2c'
let g:history_ft_ignore = ['fern', 'netrw']

" Use these variables to set custom characters for the history indicators.
" These are also the defaults for terminal vim
let g:history_indicator_back_active      = '⬅'
let g:history_indicator_back_inactive    = '⇦'
let g:history_indicator_forward_active   = '➡'
let g:history_indicator_forward_inactive = '⇨'
let g:history_indicator_separator        = ' '



" treesitter addtional
lua <<EOF
require'nvim-treesitter.configs'.setup {
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@arrow.outer",
        ["ic"] = "@class.inner",

        -- Or you can define your own textobjects like this
        ["ia"] = {
          python = "(function_definition) @function",
          cpp = "(function_definition) @function",
          typescript = "(function_definition) @function",
          c = "(function_definition) @function",
          java = "(method_declaration) @function",
        },
      },
    },
  },
}

require "nvim-treesitter.configs".setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  }
}

require'nvim-treesitter.configs'.setup {
  textobjects = {
    move = {
      enable = true,
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    },
  },
}


EOF


nnoremap <leader>y gnny
nnoremap <Leader>t :lua require'lsp_extensions'.inlay_hints{}

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
augroup YankHighlight
  " Highlight on yank
  autocmd! 
  au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=1000}
augroup end

" CONCEAL
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=


nnoremap <silent> <C-c><C-y> :call ToggleConcealLevel()<CR>
nnoremap <silent> <Leader>di <cmd>lua vim.lsp.util.show_line_diagnostics()<CR>

" function! Inlay()
"     lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment" }
"     echo("hello")
" endfunction
" autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost * :call Inlay()
let g:rustfmt_autosave = 1

" lua require'boo-colorscheme'.use{}

nnoremap <Leader>T :lua require'lsp_extensions'.inlay_hints()<CR>
lua <<EOF
function LSPExtensionsInlayHints()
  print("hello")
  require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "NonText" }
end

function LSPFormat(opts)
  return vim.lsp.buf.formatting_sync(opts, 1000)
end
EOF
" autocmd CursorHold,CursorHoldI *.rs :lua require'lsp_extensions'.inlay_hints{ only_current_line = true, prefix = ' ░ ', highlight = "Menu" }
autocmd InsertLeave,BufEnter,BufCreate,BufWinEnter,TabEnter,BufWritePost lua LSPExtensionsInlayHints<CR> 
autocmd BufWritePre lua LSPFormatRust()
