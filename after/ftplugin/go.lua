local vo = vim.opt_local
local tabSize = 4
vo.tabstop = tabSize
vo.shiftwidth = tabSize
vo.softtabstop = tabSize

local wk = require 'which-key'
wk.add {
  { '<leader>c', '', desc = '+Coding' },
  { '<leader>cl', "<cmd>lua print('TODO')<cr>", desc = 'Todo' },
  { '<leader>cc', "<cmd>lua print('TODO')<cr>", desc = 'Todo2' },
}
