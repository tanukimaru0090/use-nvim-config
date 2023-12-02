
function SetUseTerm()
  vim.o.shell = "powershell.exe"
end
function UseRun()
  SetUseTerm()
  vim.api.nvim_command("colorscheme default-colors-plus")
end

