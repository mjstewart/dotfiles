require "core.options"
require "core.keymaps"
require "core.plugins"
require "core.colourscheme"
require "core.cmp"
require "core.lsp"
require "core.telescope"
require "core.treesitter"
require "core.dashboard"
require "core.autopairs"
require "core.comment"
require "core.gitsigns"
require "core.nvim-tree"
require "core.bufferline"
require "core.toggleterm"
require "core.lualine"
require "core.zoxide"

require'lspconfig'.hls.setup{}

vim.g.rooter_cd_cmd = 'lcd'
