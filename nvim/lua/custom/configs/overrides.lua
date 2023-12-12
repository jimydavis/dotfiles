local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "go",
    "python",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    -- go stuff
    "gopls",
    "gofumpt",
    "goimports-reviser",
    -- python stuff
    "pyright",
    "black",
    "mypy",
    "ruff",
    "isort",
    "debugpy",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.dapui = {
  layouts = {
    {
      elements = {
        {
          id = "scopes",
          size = 1.0,
        },
      },
      position = "bottom",
      size = 25,
    },
    {
      elements = {
        {
          id = "repl",
          size = 0.25,
        },
        {
          id = "console",
          size = 0.25,
        },
        {
          id = "stacks",
          size = 0.25,
        },
        {
          id = "breakpoints",
          size = 0.25,
        },
        -- {
        --   id = "watches",
        --   size = 0.25,
        -- },
      },
      position = "left",
      size = 40,
    },
  },
}

return M
