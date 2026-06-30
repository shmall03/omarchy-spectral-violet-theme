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
                red = "#dc7070",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#ebadad",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#dcdc70",
                -- green: Comments, strings, success states, git additions
                green = "#70dc70",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#70dcdc",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#7070dc",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#dc70dc",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#ebadeb",
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
