-- Direcory Navigation
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Map keys to navigate between tabs
vim.api.nvim_set_keymap('n', '<leader>n', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', ':tabprevious<CR>', { noremap = true, silent = true })

-- Buffer navigation
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })

-- Split pane shortcut
vim.keymap.set('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true })

-- Pane navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true }) -- navigate left
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true }) -- navigate down
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true }) -- navigate up
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true }) -- navigate right

-- map keys for numeric navigation between tabs
vim.api.nvim_set_keymap('n', '<Leader>1', ':tabnext 1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>2', ':tabnext 2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>3', ':tabnext 3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>4', ':tabnext 4<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>5', ':tabnext 5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>6', ':tabnext 6<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>7', ':tabnext 7<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>8', ':tabnext 8<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>9', ':tabnext 9<CR>', { noremap = true, silent = true })

-- Indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Comment plugin
vim.api.nvim_set_keymap('n', '<leader>ac', "gcc", { noremap = false })
vim.api.nvim_set_keymap('v', '<leader>ac', "gcc", { noremap = false })


-- Comment out visually selected block
-- vim.api.nvim_set_keymap('x', '<leader>ac', [[:s/^/\/\/<CR>]], { noremap = true, silent = true })

-- Uncomment visually selected block
-- vim.api.nvim_set_keymap('x', '<leader>rc', [[:s/^\/\//<CR>]], { noremap = true, silent = true })

-- add /*** comment ***/
function insertComment()
  -- Get the current line
  local current_line = vim.fn.getline('.')

  -- Calculate the number of asterisks needed on each side
  local fill_length = 80 - string.len(current_line) - 5
  local fill_chars = string.rep('*', fill_length / 2)

  -- Construct the new comment line
  local comment_line = '/' .. fill_chars .. ' ' .. current_line .. ' ' .. fill_chars .. '/'

  -- Replace the current line with the new comment line
  vim.fn.setline('.', comment_line)
end

-- Map the function to <leader>lc
vim.api.nvim_set_keymap('n', '<leader>ac', [[:lua insertComment()<CR>]], { noremap = true, silent = true })
