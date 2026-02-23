return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#040305",
                bg_dark = "#040305",
                bg_highlight = "#a694b8",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#d9d3de",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#ccc7d1",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#a694b8",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#9369bf",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#c1a7dd",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#a47acc",
                -- green: Comments, strings, success states, git additions
                green = "#9b6acd",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#ac84d4",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#9357ce",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#9f77c8",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#b485e2",
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
