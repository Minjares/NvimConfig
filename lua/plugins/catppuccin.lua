return {
    "catppuccin/nvim",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            background = {
                light = "latte",
                dark = "mocha",
            },
        })
        vim.opt.termguicolors = true
        vim.cmd.colorscheme("catppuccin")
    end,
}
