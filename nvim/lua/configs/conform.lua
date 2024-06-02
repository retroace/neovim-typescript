local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    json = { "biome" },
    markdown = { "mdformat" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    toml = { "taplo" },

  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
  
}

require("conform").setup(options)