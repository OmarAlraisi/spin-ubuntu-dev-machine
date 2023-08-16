local wk = require("which-key")

wk.setup {
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "", -- symbol prepended to a group
    },
}

wk.register({
    ["<leader>"] = {
        f = {
            name = "File",
            e = { "File explorer" },
            f = { "Find file" },
            g = { "Find git file" },
            s = { "Find file with search keywors" },
        },
        h = {
            name = "Harpoon",
            a = { "Add current file" },
            e = { "Harpoon explorer" },
        },
        g = {
            desc = "Git"
        },
        l = {
            name = "LSP",
            d = { "Definition" },
            D = { "Diagnose" },
            K = { "Hover" },
            a = {
                name = "Action",
                w = { "Workspace symbol" },
                c = { "Code action" },
                r = { "Rename" },
            },
            h = { "Signature help" },
            f = { "Format" },
            p = { "Prettify" },
        },
        y = {
            desc = "Yank to clipboard"
        },
        s = {
            desc = "Raplace"
        },
        x = {
            desc = "Paste"
        },
        q = {
            desc = "Quit"
        }
    }
})
