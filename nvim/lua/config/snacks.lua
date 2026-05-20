local status, snacks = pcall(require, "snacks")

if not status then
    vim.notify("plugin 'snacks' not found!")
    return
end

snacks.setup({
    opt = {
        explorer = { enabled = true }
    }
})

