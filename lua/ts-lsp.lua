-- Local Shortcut
local l = vim.lsp.config
local e = vim.lsp.enable

-- Treesitter
require("tree-sitter-manager").setup({
    auto_install = false,
    ensure_installed = {"lua", "python", "qmldir", "javascript", "go" },
})

-- Quickshell
l['qmlls'] = {
    cmd         = { 'qmlls6', '-I', '/lib/qt6/qml/' },
    filetypes    = { 'qml' },
    root_markers = { '.qmlls.ini', 'shell.qml', '.git' },
}
e('qmlls')

-- Lua
l['luals'] = {
    cmd         = { 'lua-language-server' },
    filetypes    = { 'lua' },
    root_markers = { 'init.lua', '.git' },
}
e('luals')

-- Python
l['pyls'] = {
    cmd         = { 'pyright-langserver', '--stdio' },
    filetypes    = { 'python' },
    root_markers = { 'pyproject.toml', 'requirements.txt', 'main.py', '.git' },
}
e('pyls')

-- C
l['clang'] = {
    cmd         = { 'clangd' },
    filetypes    = { 'c' },
    root_markers = { 'main.c', '.git' },
}
e('clang')

-- Markdown

l['markdown'] = {
    cmd         = { 'marksman', 'server' },
    filetypes = { "markdown", "markdown.mdx" },
    root_markers = { ".marksman.toml", ".obsidian", ".git" },
}
e('markdown')
