local M = {}

-- enable keybindings only for when lsp server available
M.on_attach = function(client, bufnr)
	-- keybind options
	local opts = { noremap = true, silent = true, buffer = bufnr }

	-- set keybinds
	vim.keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
	vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- go to declaration
	vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see declaration and make edits in window
	vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation<CR>", opts) -- go to implementation
	vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
	vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
	vim.keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostic<CR>", opts) -- show diagnostic for line
	vim.keymap.set("n", "<leader>d", "<cdm>Lspsaga show_cursor_diagnostic<CR>", opts) -- show diagnostic for cursor
	vim.keymap.set("n", "<leader>pd", "<cdm>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to prev diagnostic
	vim.keymap.set("n", "<leader>nd", "<cdm>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic
	vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for under cursor
	vim.keymap.set("n", "<leader>lo", "<cdm>LSoutlineToggle<CR>", opts) -- see outline on right hand side

  if client.name == "pyright" then
	  vim.keymap.set("n", "<leader>oi", "<cdm>PyrightOrganizeImports<CR>", opts)
  end
end

return M
