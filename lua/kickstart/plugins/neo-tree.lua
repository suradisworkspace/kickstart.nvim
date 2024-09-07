-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    {
      'adelarsq/image_preview.nvim',
      event = 'VeryLazy',
      config = function()
        require('image_preview').setup()
      end,
    },
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = true,
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ["<leader>p"] = "image_wezterm",
        },
      },
      commands = {
        image_wezterm = function(state)
          local node = state.tree:get_node()
          if node.type == "file" then
            require("image_preview").PreviewImage(node.path)
          end
        end,
      },
    },
  },
}
