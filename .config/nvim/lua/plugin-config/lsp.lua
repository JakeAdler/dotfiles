-- variables{{{

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        virtual_text = false,
    }
)

vim.fn.sign_define("LspDiagnosticsSignError",
                   {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"})
vim.fn.sign_define("LspDiagnosticsSignWarning",
                   {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
vim.fn.sign_define("LspDiagnosticsSignHint",
                   {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"})
vim.fn.sign_define("LspDiagnosticsSignInformation",
                   {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"})

local capabilities = vim.lsp.protocol.make_client_capabilities()
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

--}}}

-- TypeScript/JavaScript{{{

-- npm i -g typescript typescript-language-server


require'lspconfig'.tsserver.setup{
    capabilities = capabilities,
    on_attach = on_attach,
}
--}}}

-- JSON {{{
-- npm i -g vscode-langservers-extracted

require'lspconfig'.jsonls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"json", "jsonc"},
    settings = {
        json = {
            -- Schemas https://www.schemastore.org
            schemas = {
                {
                    fileMatch = {"package.json"},
                    url = "https://json.schemastore.org/package.json"
                },
                {
                    fileMatch = {"tsconfig*.json"},
                    url = "https://json.schemastore.org/tsconfig.json"
                },
                {
                    fileMatch = {
                        ".prettierrc",
                        ".prettierrc.json",
                        "prettier.config.json"
                    },
                    url = "https://json.schemastore.org/prettierrc.json"
                },
                {
                    fileMatch = {".eslintrc", ".eslintrc.json"},
                    url = "https://json.schemastore.org/eslintrc.json"
                },
                {
                    fileMatch = {".babelrc", ".babelrc.json", "babel.config.json"},
                    url = "https://json.schemastore.org/babelrc.json"
                },
                {
                    fileMatch = {"lerna.json"},
                    url = "https://json.schemastore.org/lerna.json"
                },
                {
                    fileMatch = {"now.json", "vercel.json"},
                    url = "https://json.schemastore.org/now.json"
                },
                {
                    fileMatch = {
                        ".stylelintrc",
                        ".stylelintrc.json",
                        "stylelint.config.json"
                    },
                    url = "http://json.schemastore.org/stylelintrc.json"
                }
            }
        }
    }
}--}}}

-- CSS{{{

-- npm i -g vscode-langservers-extracted

require'lspconfig'.cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

--}}}

-- HTML{{{

--npm i -g vscode-langservers-extracted

require'lspconfig'.html.setup {
  capabilities = capabilities,
  on_attach = on_attach
}
--}}}
