---@diagnostic disable: undefined-global
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tsserver", "basedpyright", "html", "gopls", "cssls", "tailwindcss" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({

                capabilities = capabilities,
            })
            lspconfig.tsserver.setup({

                capabilities = capabilities,
            })
            lspconfig.basedpyright.setup({

                capabilities = capabilities,
            })
            lspconfig.html.setup({

                capabilities = capabilities,
            })
            lspconfig.gopls.setup({

                capabilities = capabilities,
            })
            lspconfig.cssls.setup({

                capabilities = capabilities,
            })
            lspconfig.tailwindcss.setup({

                capabilities = capabilities,
            })

            vim.keymap.set("n", "N", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
