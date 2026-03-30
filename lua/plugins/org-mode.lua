return {
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Setup orgmode
      require('orgmode').setup({
        org_agenda_files = '~/vault/*',
        org_default_notes_file = '~/vault/*',
      })
      -- Experimental LSP support
      vim.lsp.enable('org')
    end,
    
  },

  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
  },

  }
