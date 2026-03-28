return {
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    config = function()
      -- Setup orgmode
      require('orgmode').setup({
        org_agenda_files = '~/Documents/vault/*',
        org_default_notes_file = '~/Documents/vault/*',
      })
      -- Experimental LSP support
      vim.lsp.enable('org')
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  }

  }
