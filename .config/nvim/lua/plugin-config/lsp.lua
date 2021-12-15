

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {virtual_text = false, }
)

vim.fn.sign_define(
    "LspDiagnosticsSignError",
    {
        texthl = "LspDiagnosticsSignError",
        text = "", 
        numhl = "LspDiagnosticsSignError"
    }
)

vim.fn.sign_define(
    "LspDiagnosticsSignWarning",
    {
        texthl = "LspDiagnosticsSignWarning",
        text = "",
        numhl = "LspDiagnosticsSignWarning"
    }
)

vim.fn.sign_define(
    "LspDiagnosticsSignHint",
    {
        texthl = "LspDiagnosticsSignHint",
        text = "",
        numhl = "LspDiagnosticsSignHint"
    }
)
vim.fn.sign_define(
    "LspDiagnosticsSignInformation",
    {
        texthl = "LspDiagnosticsSignInformation",
        text = "",
        numhl = "LspDiagnosticsSignInformation"
    }
)


local capabilities = require("cmp_nvim_lsp").update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)


capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    }
}

local on_attach = function(client, bufnr)
    if client.resolved_capabilities.document_highlight then

        vim.api.nvim_exec([[
            hi LspReferenceRead cterm=bold ctermbg=red guibg=#464646
            hi LspReferenceText cterm=bold ctermbg=red guibg=#464646
            hi LspReferenceWrite cterm=bold ctermbg=red guibg=#464646
            augroup lsp_document_highlight
            autocmd! * <buffer>
                autocmd CursorHold <buffer> lua vim.lsp.diagnostic.show_line_diagnostics()
                autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
            augroup END
        ]], false)

    end

end

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    if server.name == "jsonls" then
        server:setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                    filetypes = {"json", "jsonc"},
                    settings = {
                        json = {
                            -- schemas https://www.schemastore.org
                            schemas = {
                                {
                                    filematch = {"package.json"},
                                    url = "https://json.schemastore.org/package.json"
                                },
                                {
                                    filematch = {"tsconfig*.json"},
                                    url = "https://json.schemastore.org/tsconfig.json"
                                },
                                {
                                    filematch = {
                                        ".prettierrc",
                                        ".prettierrc.json",
                                        "prettier.config.json"
                                    },
                                    url = "https://json.schemastore.org/prettierrc.json"
                                },
                                {
                                    filematch = {".eslintrc", ".eslintrc.json"},
                                    url = "https://json.schemastore.org/eslintrc.json"
                                },
                                {
                                    filematch = {".babelrc", ".babelrc.json", "babel.config.json"},
                                    url = "https://json.schemastore.org/babelrc.json"
                                },
                                {
                                    filematch = {"lerna.json"},
                                    url = "https://json.schemastore.org/lerna.json"
                                },
                                {
                                    filematch = {"now.json", "vercel.json"},
                                    url = "https://json.schemastore.org/now.json"
                                },
                                {
                                    filematch = {
                                        ".stylelintrc",
                                        ".stylelintrc.json",
                                        "stylelint.config.json"
                                    },
                                    url = "http://json.schemastore.org/stylelintrc.json"
                                }
                            }
                        }
                    }
                })

    else
        server:setup({
            on_attach = on_attach,
            capabilities = capabilities
        })
    end

    -- this setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    vim.cmd [[ do user lspattachbuffers ]]
end)
