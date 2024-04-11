-- --nopluginが指定されたかどうか
local has_noplugin = false
-- Neovimの引数チェック
for _, arg in pairs(vim.v.argv) do
	if arg == "--noplugin" then
    	   has_noplugin = true
    	   break
        end
end

-- Console Require 
require("console/init/run")
require("console/init/opt")
require("console/init/keymap")
-- GUI Require 
require("gui/init/run")
require("gui/init/opt")
require("gui/init/keymap")
-- Share Require
require("share/plugins/require_plugins")
require("share/plugins/nvim-dap-conf")
require("share/plugins/lsp_signature-conf")
require("share/plugins/conform-conf")
require("share/plugins/barbar-conf")
require("share/plugins/nvim-web-devicons-conf")
require("share/plugins/notify-conf")
require("share/plugins/nvim-lsp-conf")
require("share/plugins/nvim-cmp-conf")
require("share/plugins/nvim-treesitter-conf")
require("share/plugins/neodev-conf")
require("share/command")
require("share/keymap")
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



-- GUIクライアントかどうか
if vim.fn.has('gui_running') == 1 then
  -- GUIの場合
  
  -- UseRunConfig 
  UseRunGUI()
  SetUseOptionsGUI()
  SetDefaultOptionsGUI()
  SetUseKeyMapGUI()
  -- UsePluginsConfig

  -- DefaultKeyMap

  -- UserKeyMap
else 
  -- Conosleの場合
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

  -- NOTE: Here is where you install your plugns.
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
    -- プラグインが有効な場合
    if has_noplugin ~=true then
	-- DefaultPluginsConfig
	SetNvimLspConfig()
	SetNvimTreesitterConfig()
	SetNeoDevConfig()
        SetNvimCmpConfig()
        -- UsePluginsConfig
	SetNvimDapConfig()
    	SetLspSignatureConfig()
    	SetConformConfig()
    	SetBarBarConfig() 
    	SetNvimWebDeviconsConfig()
    	SetNotifyConfig()
    	-- DefaultKeyMap
    	SetDefaultKeyMap()
    	-- UserKeyMap
    	SetUseKeyMap()
    -- プラグインが無効な場合
    else
	SetShareKeyMap()
    end

  



-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

end





