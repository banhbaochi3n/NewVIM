local options = {
	termguicolors = true,                    -- set term gui colors (most terminals support this)
	background = "dark",                     -- dark mode 
	clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	fileencoding = "utf-8",                  -- the encoding written to a file
	mouse = "a",                             -- allow the mouse to be used in neovim
	conceallevel = 0,                        -- so that `` is visible in markdown files
	showtabline = 2,                         -- always show tabs
	pumheight = 10,                          -- pop up menu height
	timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
	showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
	hlsearch = false,                        -- don't highlight all matches on previous search pattern
	ignorecase = true,                       -- ignore case in search patterns
	smartcase = true,                        -- smart case
	smartindent = true,                      -- make indenting smarter again
	splitbelow = true,                       -- force all horizontal splits to go below current window
	splitright = true,                       -- force all vertical splits to go to the right of current window
	swapfile = false,                        -- creates a swapfile
	backup = false,                          -- creates a backup file
	undofile = true,                         -- enable persistent undo
	updatetime = 400,                        -- faster completion (4000ms default)
	writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	cmdheight = 1,                           -- more space in the neovim command line for displaying messages
	shiftwidth = 4,                          -- the number of spaces inserted for each indentation
	tabstop = 4,                             -- insert 4 spaces for a tab
	expandtab = false,                        -- convert tabs to spaces
	cursorline = true,                       -- highlight the current line
	number = true,                           -- set numbered lines
    relativenumber = true,                   -- set relative numbered lines
	numberwidth = 4,                         -- set number column width to 4

	signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
	wrap = false,                            -- display lines as one long line
	linebreak = true,                        -- companion to wrap, don't split words
	scrolloff = 10,                           -- minimal number of screen lines to keep above and below the cursor
	sidescrolloff = 10,                       -- minimal number of screen columns either side of cursor if wrap is `false`
	-- guifont = "monospace:h17",               -- the font used in graphical neovim applications
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] 
