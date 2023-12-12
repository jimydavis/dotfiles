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
  n = {
    ["<leader>db"] = { "<cmd>lua require('dap').toggle_breakpoint()<CR>", "DBG BkPt" },
    ["<F5>"] = { "<cmd>lua require('dap').continue()<CR>", "DBG Start" },
    ["<F10>"] = { "<cmd>lua require('dap').step_over()<CR>", "DBG Step Over" },
    ["<F11>"] = { "<cmd>lua require('dap').step_into()<CR>", "DBG Step Into" },
    ["<F12>"] = { "<cmd>lua require('dap').step_out()<CR>", "DBG Step Out" },
    ["<F6>"] = { "<cmd>lua require('dap').terminate()<CR>", "DBG Terminate" },
  },
}
-- more keybinds!

return M
