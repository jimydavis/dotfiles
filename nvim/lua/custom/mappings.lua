---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd>DapToggleBreakpoint<CR>" },
    ["<F5>"] = { "<cmd>DapContinue<CR>" },
    ["<F10>"] = { "<cmd>DapStepOver<CR>" },
    ["<F11>"] = { "<cmd>DapStepInto<CR>" },
    ["<F12>"] = { "<cmd>DapStepOut<CR>" },
  },
}
-- more keybinds!

return M
