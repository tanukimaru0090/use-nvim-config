function SetLspSignatureConfig()
  local lsp_signature = require("lsp_signature")
  lsp_signature.setup({
      bind = true,
      hint_enable = false,
      --floating_window = false,
      --toggle_key = '<C-Space>',
  })
end
