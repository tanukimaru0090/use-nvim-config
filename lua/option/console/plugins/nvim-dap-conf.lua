-- User Call
function SetDapKeyMap()
  -- <leader>F4 でブレークポイントを貼る
  vim.api.nvim_set_keymap('n', '<F4>', ':lua require("dap").toggle_breakpoint()<CR>', { noremap = true, silent = true })
  -- <leader>F5 で実行
  vim.api.nvim_set_keymap('n', '<F5>', ':lua require("dap").run_last()<CR>', { noremap = true, silent = true })
  -- <leader>F10 でステップオーバー
  vim.api.nvim_set_keymap('n', '<F10>', ':lua require("dap").step_over()<CR>', { noremap = true, silent = true })
 -- <leader>F11 でステップイン
  vim.api.nvim_set_keymap('n', '<F11>', ':lua require("dap").step_into()<CR>', { noremap = true, silent = true })
 -- <leader>F12 でステップアウト
  vim.api.nvim_set_keymap('n', '<F12>', ':lua require("dap").step_out()<CR>', { noremap = true, silent = true })





end 
function StartDap()
  local dapui = require("dapui")
  SetDapKeyMap()
  dapui.open()
end
function EndDap() 
  local dapui = require("dapui")
  local dap = require("dap")
  dapui.close()
  dap.clear_breakpoints()
  dap.disconnect()
end

function SetNvimDapConfig()

local dap = require("dap")
dap.adapters = {
  codelldb = {
    type = "server",
    host = "127.0.0.1",
    port = "${port}",
    executable = {
      command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
      args = {"--port","${port}"}
    }
  }
}
dap.configurations = {
  cpp = {
    {
      name = "Launch File",
      type = "codelldb",
      request = "launch",
      program = function()
        return vim.fn.input("Path to executable: ",vim.fn.getcwd() .. "/" ,"file")
      end ,
      cwd = "${workspaceFolder}",
      stopEntry = false,
    }
  }
}
local dapui = require("dapui").setup()
end
