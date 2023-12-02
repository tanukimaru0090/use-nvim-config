--[[
=====================================================================
===========================Use Require===============================
=====================================================================
--]]
require("option/console/plugins/require_plugins")
require("option/console/init/keymap")
require("option/console/init/opt")
require("option/console/plugins/nvim-dap-conf")
require("option/console/plugins/lsp_signature-conf")
require("option/console/init/run")
require("option/console/plugins/conform-conf")
require("option/console/plugins/barbar-conf")
require("option/console/plugins/nvim-web-devicons-conf")
require("option/console/plugins/nvim-notify-conf")
require("option/console/plugins/nvim-lualine-conf")
require("option/console/plugins/nvim-treesitter-conf")
require("option/console/plugins/nvim-lsp-conf")
require("option/console/plugins/nvim-cmp-conf")
require("option/gui/init/opt")
require("option/gui/init/run")


--[[

=====================================================================
==================== READ THIS BEFORE CONTINUING ====================
=====================================================================

Kickstart.nvim is *not* a distribution.

Kickstart.nvim is a template for your own configuration.
  The goal is that you can read every line of code, top-to-bottom, understand
  what your configuration is doing, and modify it to suit your needs.

  Once you've done that, you should start exploring, configuring and tinkering to
  explore Neovim!

  If you don't know anything about Lua, I recommend taking some time to read through
  a guide. One possible example:
  - https://learnxinyminutes.com/docs/lua/


  And then you can explore or search through `:help lua-guide`
  - https://neovim.io/doc/user/lua-guide.html


Kickstart Guide:

I have left several `:help X` comments throughout the init.lua
You should run that command and read that help section for more information.

In addition, I have some `NOTE:` items throughout the file.
These are for you, the reader to help understand what is happening. Feel free to delete
them once you know what you're doing, but they should serve as a guide for when you
are first encountering a few different constructs in your nvim config.

I hope you enjoy your Neovim journey,
- TJ

P.S. You can delete this when you're done too. It's your config now :)
--]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)

function isGUI()
  return vim.fn.has('gui_running') == 1 
end 




-- GUI Settings 

if isGUI() then
   UseGUIRun()
   SetGUIDefaultOptions()
   SetGUIUseOptions()
   return
end



-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({
  -- Default require plugins 
  DefaultPlugins(),
  -- Use require plugins 
  UsePlugins(),

})



-- UseRunConfig 
UseRun()
SetDefaultOptions()
SetUseOptions()
-- UsePluginsConfig
SetNotifyConfig()
SetNvimDapConfig()
SetLspSignatureConfig()
SetConformConfig()
SetBarBarConfig() 
SetNvimWebDeviconsConfig()

-- DefaultKeyMap
SetDefaultKeyMap()
-- UserKeyMap
SetKeyMap()
-- DefaultTreesitterConfig
SetDefaultNvimTreesitterConfig()
-- DefaultLspConfig 
SetDefaultNvimLspConfig()
-- DefaultCmpConfig
SetDefaultNvimCmpConfig()


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
