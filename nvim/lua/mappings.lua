require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Trouble
map("n", "<leader>q", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Trouble diagnostics toggle" })

-- NvimTree
map("n", "<F2>", "<cmd>NvimTreeToggle<CR>", { desc = "Nvimtree Toggle window" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
map("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })

-- NeoTree
map("n", "<leader>e", "<cmd>Neotree toggle float<CR>", { desc = "NeoTree Toggle Window" })

-- NeoTree
map("n", "<leader>tt", "<cmd>TailwindFoldToggle<CR>", { desc = "Tailwind Fold Toggle" })

-- Codeium
map("i", "<C-x>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })

map("i", "<C-z>", function()
  return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true, silent = true })
