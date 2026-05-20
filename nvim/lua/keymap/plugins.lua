local map = vim.keymap.set
local opt = { noremap=true, silent=true }

-- Snacks.explorer 文件列表
map("n", "<A-m>", function() Snacks.explorer() end, opt)

-- Snacks.picker 搜索
map("n", "<leader>ff", function () Snacks.picker.files() end, {desc = "Find Files"})
map("n", "<leader>fg", function () Snacks.picker.grep() end, {desc = "Grep"})
map("n", "<leader>fb", function () Snacks.picker.buffers() end, {desc = "Buffers"})
map("n", "<leader>fe", function () Snacks.picker.diagnostics() end, {desc = "Lsp Diagnostics"})

-- bufferline buffer标题栏
map("n", "<A-[>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<A-]>", ":BufferLineCycleNext<CR>", opt)
map("n", "<A-\\>", function() Snacks.bufdelete() end, opt)
map("i", "<A-[>", "<Esc>:BufferLineCyclePrev<CR>a", opt)
map("i", "<A-]>", "<Esc>:BufferLineCycleNext<CR>a", opt)
map("i", "<A-\\>", function() Snacks.bufdelete() end, opt)


