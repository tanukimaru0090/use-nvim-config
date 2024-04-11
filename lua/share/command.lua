-- init.luaを再読み込みするコマンド
vim.cmd("command! -nargs=0 InitRestart :luafile ~/.config/nvim/init.lua")
-- WSLをターミナルとして起動するコマンド
vim.cmd("command! -nargs=0 Wterm :set shell=wsl.exe |:term")
-- PowerShellをターミナルとして起動するコマンド
vim.cmd("command! -nargs=0 Pterm :set shell=powershell.exe |:term")

vim.cmd([[

function! StartDevCmd()
  let cmd = 'cmd.exe /k "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\VsDevCmd.bat" -startdir=none -arch=x64 -host_arch=x64'
  execute 'terminal' cmd
endfunction
]]
)
vim.cmd([[
function! StartDevShell()
  let cmd =  'powershell.exe -NoExit -Command "&{Import-Module """C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\Microsoft.VisualStudio.DevShell.dll"""; Enter-VsDevShell be5ce74d -SkipAutomaticLocation -DevCmdArguments """-arch=x64 -host_arch=x64"""}"'
  execute 'terminal' cmd
endfunction
]]
)



-- Visual Studio Developer Command Promptを起動するコマンド
vim.cmd("command! -nargs=0 DevCmd call StartDevCmd()")
-- Visual Studio Developer Power Shellを起動するコマンド
vim.cmd("command! -nargs=0 DevShell call StartDevShell()")

