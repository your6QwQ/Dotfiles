local function exelise(path)
    if vim.fn.has('win32') == 0 then
        return path
    end
    return path .. '.exe'
end

local function find_python()
    local venv_path = vim.fn.findfile('pyvenv.cfg', '.venv;./*;')
    if string.len(venv_path) > 10 then
        venv_path = string.sub(venv_path, 1, -11) .. '*'
        return vim.fn.findfile(exelise('python3'), venv_path) or vim.fn.findfile(exelise('python'), venv_path)
    end

    local conda_env = os.getenv('CONDA_DEFAULT_ENV')
    if conda_env then
        return os.getenv('CONDA_PREFIX') .. '/bin/python'
    end
    
    return vim.fn.exepath('python3') or vim.fn.exepath('python')
end

vim.lsp.config("pyright", {
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true,
            },

            pythonPath = find_python() 
        },
    },
})

local status0, mason = pcall(require, "mason")

if not status0 then
    vim.notify("plugin 'mason' not found!")
    return
end

mason.setup({})


local status1, mason_lspconfig = pcall(require, "mason-lspconfig")

if not status1 then
    vim.notify("plugin 'mason-lspconfig' not found!")
    return
end

mason_lspconfig.setup({})


