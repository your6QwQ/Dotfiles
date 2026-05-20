local status, lualine = pcall(require, "lualine")

if not status then
    vim.notify("plugin 'lualine' not found!")
    return
end

lualine.setup({
    options = {
        theme = 'auto',
        icons_enabled = true,
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' }
    }
})
