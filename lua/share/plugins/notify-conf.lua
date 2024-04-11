
function SetNotifyConfig()
-- Load the plugin
local notify = require("notify")

-- Set some options
notify.setup({
  -- Animation style (see below for details)
  stages = "slide",

  -- Default timeout for notifications
  timeout = 5000,

  -- For stages that change opacity this is treated as the highlight behind the window
  background_colour = "Normal",

  -- Icons for the different levels
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎"
  }
})
-- Override vim.notify function to use nvim-notify
vim.notify = notify

end
