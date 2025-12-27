return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#210321", -- Default background
                base01 = "#ab5488", -- Lighter background (status bars)
                base02 = "#210321", -- Selection background
                base03 = "#ab5488", -- Comments, invisibles
                base04 = "#ffafe4", -- Dark foreground
                base05 = "#ffeca0", -- Default foreground
                base06 = "#ffeca0", -- Light foreground
                base07 = "#ffafe4", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#e71852", -- Variables, errors, red
                base09 = "#f8bdcd", -- Integers, constants, orange
                base0A = "#f2c256", -- Classes, types, yellow
                base0B = "#7ad573", -- Strings, green
                base0C = "#53d0bc", -- Support, regex, cyan
                base0D = "#5090f8", -- Functions, keywords, blue
                base0E = "#9d58f0", -- Keywords, storage, magenta
                base0F = "#fcf3dd", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
