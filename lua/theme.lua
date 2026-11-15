require("auto-dark-mode").setup({
    set_dark_mode = function()
        vim.api.nvim_set_option_value("background", "dark", {})
        vim.cmd[[colorscheme monoglow-void]]
    end,
    set_light_mode = function()
        vim.api.nvim_set_option_value("background", "light", {})
        vim.cmd[[colorscheme monoglow-light]]
    end,
    update_interval = 3000,
    fallback = "dark"
})
require("monoglow").setup({
  on_colors = function(colors)
    colors.glow = "#C05621"
  end
})
