-- Shortcut
local o = vim.opt
local k = vim.keymap.set

-- Settings
o.autocomplete  = false
vim.o.complete = ".,w,b,u,o"
vim.o.completeopt = "fuzzy,menuone,noselect,popup"

-- Remaps
k("n", "<leader>r", vim.diagnostic.open_float)

k("i", "<C-Space>", function()
  if vim.fn.pumvisible() == 1 then
    return "<C-e>"
  end
  return "<C-n>"
end, { expr = true, desc = "Toggle completion menu" })

k("i", "<C-CR>", function()
  return vim.fn.pumvisible() == 1 and "<C-y>" or "<CR>"
end, { expr = true, desc = "Confirm completion" })

k("i", "<Tab>", function()
  return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"
end, { expr = true, desc = "Next completion item" })

k("i", "<S-Tab>", function()
  return vim.fn.pumvisible() == 1 and "<C-p>" or "<S-Tab>"
end, { expr = true, desc = "Previous completion item" })


-- Attach to lsp
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, args.buf, {
        autotrigger = false,
      })
    end
  end,
})
