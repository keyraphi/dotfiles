local null_ls = require("null-ls")

local sources = {
	null_ls.builtins.formatting.black.with({ extra_args = { "--fast" } }),
	null_ls.builtins.formatting.elm_format,
	null_ls.builtins.formatting.clang_format,
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
	null_ls.builtins.diagnostics.write_good,
	null_ls.builtins.diagnostics.gitlint,
	null_ls.builtins.diagnostics.pylint.with({ extra_args = {"--generated-members=numpy.* ,torch.*"} }),
}

null_ls.setup({
	sources = sources,
})
