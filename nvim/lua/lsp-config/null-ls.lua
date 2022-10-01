local null_ls = require("null-ls")

local sources = {
    null_ls.builtins.formatting.black.with({ extra_args = { "--fast" } }),
    null_ls.builtins.formatting.elm_format,
    -- null_ls.builtins.formatting.clang_format,
    null_ls.builtins.formatting.cmake_format,
    null_ls.builtins.formatting.codespell,
    null_ls.builtins.formatting.djhtml,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.json_tool,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.latexindent,
    null_ls.builtins.formatting.markdownlint,
    null_ls.builtins.formatting.pg_format,
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.diagnostics.write_good,
    null_ls.builtins.diagnostics.gitlint,
    null_ls.builtins.diagnostics.pylint.with({
        extra_args = { "--generated-members=numpy.* ,torch.*,zmq.PUSH,zmq.PULL,zmq.NOBLOCK" },
    }),
}

null_ls.setup({
    sources = sources,
})

local lsp_formatting = function(bufnr)
    vim.lsp.buf.format({
        filter = function(client)
            -- apply whatever logic you want (in this example, we'll only use null-ls)
            return client.name == "null-ls"
        end,
        bufnr = bufnr,
    })
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- add to your shared on_attach callback
local on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                lsp_formatting(bufnr)
            end,
        })
    end
end
