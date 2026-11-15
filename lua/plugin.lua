-- Local Shortcuts
local p	= vim.pack.add

-- Telescope
p({
	{ src = 'https://github.com/nvim-telescope/telescope.nvim', verstion = '*' },
	-- Dependencies
	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
})
require('plugins.telescope')

-- UndoTree
p({
    { src = 'https://github.com/jiaoshijie/undotree' },
})
require('plugins.undotree')

-- Looks
p({
    { src = 'https://github.com/wnkz/monoglow.nvim' },
    { src = 'https://github.com/f-person/auto-dark-mode.nvim' }
})
p({
  { src = "https://github.com/romus204/tree-sitter-manager.nvim" }
})
