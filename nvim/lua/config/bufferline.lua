local status, bufferline = pcall(require, "bufferline")

if not status then
    vim.notify("plugin 'bufferline' not found!")
    return
end

bufferline.setup({
    options = {
        -- 使用 nvim 内置lsp
        -- diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "snacks_layout_box",
            text = "File Explorer",
            separator=true,
            text_align = "left",
        }}
    }
})

