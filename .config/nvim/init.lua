-- Disable compatibility with vi which can cause unexpected issues.
 vim.cmd('set nocompatible')

 -- Enable type file detection. Vim will be able to try to detect the type of file in use.
 vim.cmd('filetype on')

 -- Load an indent file for the detected file type.
 vim.cmd('filetype indent on')

 -- Enable auto completion menu after pressing TAB.
 vim.cmd('set wildmenu')

 -- Turn syntax highlighting on.
 vim.cmd('syntax on')

 -- Highlight cursor line underneath the cursor horizontally.
 vim.cmd('set cursorline')

 -- Add numbers to each line on the left-hand side.
 vim.cmd('set number')
 vim.cmd('set relativenumber')
 vim.cmd('set numberwidth=5')

 -- Set shift width to 4 spaces.
 vim.cmd('set shiftwidth=2')

 -- Set tab width to 4 columns.
 vim.cmd('set tabstop=2')

 -- Use space characters instead of tabs.
 vim.cmd('set expandtab')

 -- Do not save backup files.
 vim.cmd('set nobackup')

 -- Do not let cursor scroll below or above N number of lines when scrolling.
 vim.cmd('set scrolloff=10')

 -- Do not wrap lines. Allow long lines to extend as far as the line goes.
 vim.cmd('set nowrap')

 -- While searching though a file incrementally highlight matching characters as you type.
 vim.cmd('set incsearch')

 -- Ignore capital letters during search.
 vim.cmd('set ignorecase')

 -- Override the ignorecase option if searching for capital letters.
 -- This will allow you to search specifically for capital letters.
 vim.cmd('set smartcase')

 -- Show partial command you type in the last line of the screen.
 vim.cmd('set showcmd')

 -- Show the mode you are on the last line.
 vim.cmd('set showmode')

 -- Show matching words during a search.
 vim.cmd('set showmatch')

 -- Use highlighting when doing a search.
 vim.cmd('set hlsearch')

 -- Set the commands to save in history default number is 20.
 vim.cmd('set history=1000')

 -- Enable auto completion menu after pressing TAB.
 vim.cmd('set wildmenu')

 -- Make wildmenu behave like similar to Bash completion.
 vim.cmd('set wildmode=list:longest')

 -- There are certain files that we would never want to edit with Vim.
 -- Wildmenu will ignore files with these extensions.
 vim.cmd('set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx')

 -- MAPPINGS --------------------------------------------------

 -- Set leader key
 vim.g.mapleader = "\\"

 -- Press \\ to nohlsearch
 vim.keymap.set("n", "<leader>\\", ":nohlsearch<CR>", { noremap = true, silent = true })

 -- Press Crtl+S for save file
 vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

 -- Press Ctrl+Q for close file
 vim.keymap.set("n", "<c-q>", ":q<CR>", { noremap = true, silent = true })

 -- Press the space bar to type the : character in command mode.
 vim.keymap.set("n", "<space>", ":", { noremap = true, silent = true })

 -- You can split the window in Vim by typing :split or :vsplit.
 -- Navigate the split view easier by pressing CTRL+j, CTRL+l.
 vim.keymap.set("n", "<c-j>", ":split<CR>", { noremap = true, silent = true })
 vim.keymap.set("n", "<c-l>", ":vsplit<CR>", { noremap = true, silent = true })

 -- LOAD LAZY.NVIM ----------------------------------------
 local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
 if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
     "git", "clone", "--filter=blob:none",
     "https://github.com/folke/lazy.nvim.git",
     lazypath
   })
 end
 vim.opt.rtp:prepend(lazypath)

 -- Plugin setup
 require("lazy").setup({
   { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }, -- Syntax highlighting
   { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } }, -- Fuzzy finder
   { "neovim/nvim-lspconfig" }, -- LSP support
   { "hrsh7th/nvim-cmp", dependencies = { "hrsh7th/cmp-nvim-lsp" } }, -- Autocompletion
   { "nvim-lualine/lualine.nvim" }, -- Status line
   { "NLKNguyen/papercolor-theme" }, -- Install PaperColor theme
   { "Mofiqul/dracula.nvim" }, -- Dracula theme
   { "catppuccin/nvim", name = "catppuccin" }, -- Install Catppuccin
   { "EdenEast/nightfox.nvim" }, -- Install Nightfox (includes Dayfox)
   { "ellisonleao/gruvbox.nvim" }, -- Install Gruvbox (includes Dayfox)
   { "nvim-tree/nvim-tree.lua" }, -- NeoVimTree
   { "nvim-tree/nvim-web-devicons" }, -- Icons for a better look
   { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } }, --- Find files
   {'tpope/vim-fugitive'}, --- Git
   { 'lewis6991/gitsigns.nvim', config = true }, --- Edited Line Icons
   -- nvim-cmp (Auto-completion engine)
   { "hrsh7th/nvim-cmp" },
   { "hrsh7th/cmp-nvim-lsp" },
   { "hrsh7th/cmp-buffer" },
   { "hrsh7th/cmp-path" },
   { "hrsh7th/cmp-cmdline" },
   -- nvim-comment (Comment code)
   {
     "terrortylor/nvim-comment",
     config = function()
       require('nvim_comment').setup()
     end
   },
   -- Snippets (optional but recommended)
   { "L3MON4D3/LuaSnip" },
   { "saadparwaiz1/cmp_luasnip" },

   -- LSP support
   { "neovim/nvim-lspconfig" },
   { "williamboman/mason.nvim" },  -- LSP installer
   { "williamboman/mason-lspconfig.nvim" },
   -- Auto format
   { "stevearc/conform.nvim" },
   -- Others
   {'itchyny/lightline.vim'},
   {'tpope/vim-surround'},
   {'jiangmiao/auto-pairs'},
   {'alvan/vim-closetag'},
   -- alpha vim
   {
       "goolord/alpha-nvim",
       dependencies = { "nvim-tree/nvim-web-devicons" },
       config = function()
           local alpha = require("alpha")
           local dashboard = require("alpha.themes.dashboard")

           -- Luffy ASCII Art
           dashboard.section.header.val = {
             [[          ▀████▀▄▄              ▄█ ]],
             [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
             [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
             [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
             [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
             [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
             [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
             [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
             [[   █   █  █      ▄▄           ▄▀   ]],
           }          
          dashboard.section.buttons.val = {
          dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
          dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
          dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
          dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
          dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>"),
          dashboard.button("q", "   Quit Neovim", ":qa<CR>"),
         }

         local function footer()
           return { 
             "Time doesn't heal anything, it just teaches us how to live with pain.",
             "                         ---- PIKACHU ----                           ",
         } 
         end
         dashboard.section.footer.val = footer()
         dashboard.section.footer.opts.hl = "Type"
         dashboard.section.buttons.opts.hl = "Keyword"
         dashboard.opts.opts.noautocmd = true
         alpha.setup(dashboard.opts)
       end
   },
 })

 -- VIMSCRIPT ----------------------------------------------
 -- Lualine 
 require('lualine').setup {
   options = {
     theme = 'dracula', -- Change theme here
     section_separators = {'', ''},
     component_separators = {'', ''},
   },
 }
 -- NeoVimTree
 local function my_on_attach(bufnr)
   local api = require("nvim-tree.api")

   local function opts(desc)
     return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
   end

   -- Custom <c-o> Ctrl+o to open file with system default application
   vim.keymap.set("n", "<C-o>", api.node.run.system, opts("Open with system app"))
   -- Custom keybinding for <CR> (Enter)
   vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open file or folder"))

   -- Other custom keybindings
   vim.keymap.set("n", "s", api.node.open.vertical, opts("Open in vertical split"))
   vim.keymap.set("n", "S", api.node.open.horizontal, opts("Open in horizontal split"))
   vim.keymap.set("n", "t", api.node.open.tab, opts("Open in new tab"))
   vim.keymap.set("n", "a", api.fs.create, { buffer = bufnr, desc = "Create File/Folder" })
   vim.keymap.set("n", "d", api.fs.remove, { buffer = bufnr, desc = "Delete File/Folder" })
 end
 require("nvim-tree").setup({
   on_attach = my_on_attach,  -- Attach custom keybindings
   filters = {
     dotfiles = false,  
     custom = { "^.git$" } -- Hide `.git` folder
   },
 })

 vim.keymap.set("n", "<F3>", ":NvimTreeToggle<CR>") -- Toggle tree with Ctrl + 
 vim.keymap.set("n", "<learder>r", ":NvimTreeRefresh<CR>") -- Refresh
 vim.keymap.set("n", "<C-f>", ":NvimTreeFindFile<CR>") -- Locate current file
 -- Find files by Telescope
 vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>") -- Search files  
 vim.keymap.set("n", "<C-g>", ":Telescope live_grep<CR>") -- Search text in files  
 vim.keymap.set("n", "<C-b>", ":Telescope buffers<CR>") -- Switch buffers  
 vim.keymap.set("n", "<C-h>", ":Telescope help_tags<CR>") -- Search help docs  
 require('telescope').setup({
   defaults = {
     file_ignore_patterns = { "node_modules", "%.git/", "dist/" },  -- Add other folders if needed
   }
 })
 -- themes & background
 vim.o.background = "dark" -- Set background to light
 vim.cmd("colorscheme dracula") -- Apply theme
 -- Neovim cmp
 local cmp = require("cmp")
 cmp.setup({
   mapping = cmp.mapping.preset.insert({
     ["<C-Space>"] = cmp.mapping.complete(), -- Trigger suggestions manually
     ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Select completion
     ["<Tab>"] = cmp.mapping.select_next_item(), -- Navigate suggestions
     ["<S-Tab>"] = cmp.mapping.select_prev_item(),
   }),
   sources = cmp.config.sources({
     { name = "nvim_lsp" },
     { name = "buffer" },
     { name = "path" },
     { name = "luasnip" },
   }),
 })
 -- Autoformat conform nvim
 require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" }, -- Ensure TSX uses Prettier
    scss = { "prettier" },
    json = { "jq" },
    python = { "black" },
    go = { "gofmt" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
    format_callback = function()
      print("Formatting triggered!")  -- ✅ Debug print
    end,
  },
})
 
vim.keymap.set("n", "<leader>f", function()
   require("conform").format()
 end, { noremap = true, silent = true })

