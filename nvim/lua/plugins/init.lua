return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

 {
 	"williamboman/mason.nvim",
 	opts = {
 		ensure_installed = {
 			"lua-language-server", "stylua",
 			"html-lsp", "css-lsp" , "prettier", "typescript-language-server"
 		},
 	},
 },

 {
  "charludo/projectmgr.nvim",
  lazy = false, -- important!
  config = function()
      require("projectmgr").setup({
          autogit = {
              enabled = true,
              command = "git pull --ff-only > .git/fastforward.log 2>&1",
          },
          session = { enabled = true, file = ".git/Session.vim" },
      })
  end,
 },

 {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {
    expose_as_code_action = { "all" },
    
  },
  }


  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
