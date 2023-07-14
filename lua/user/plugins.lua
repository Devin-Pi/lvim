lvim.plugins = {
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                style = "storm",
                transparent = false,
                italic_comments = true,
                italic_keywords = true,
                italic_functions = true,
                italic_variables = false,
                italic_strings = false,
                italic_regions = { "TODO:", "NOTE:", "INFO:" },
                contrast_windows = { "terminal", "packer" },
                dim_windows = { "terminal", "packer" },
                dark_sidebar = true,
                dark_float = true,
            })
        end,
    },
    {
        "stevearc/dressing.nvim",
        config = function()
          require("dressing").setup({
            italic_comments = true,
            italic_keywords = true,
            italic_functions = true,
            italic_variables = false,
            italic_strings = false,
            italic_regions = { "TODO:", "NOTE:", "INFO:" },
            contrast_windows = { "terminal", "packer" },
            dim_windows = { "terminal", "packer" },
            transparent = false,
            dark_sidebar = true,
            dark_float = true,
            })
        end,
    },
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    }, 
    {
        "mfussenegger/nvim-dap",
    },
    {
        "mfussenegger/nvim-dap-python",
    },
    {
        "rcarriga/nvim-dap-ui",
    },
}
