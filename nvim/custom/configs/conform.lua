local present, conform = pcall(require, "conform")

if not present then
  return
end

conform.setup {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    cpp = { "clang_format" },
    python = function(bufnr)
      if require("conform").get_formatter_info("ruff_format", bufnr).available then
        return { "ruff_format" }
      else
        return { "isort", "black" }
      end
    end,
    ["*"] = { "codespell" },
    ["_"] = { "trim_whitespace" },
  },
  -- format_on_save = {
  --   -- I recommend these options. See :help conform.format for details.
  --   lsp_fallback = true,
  --   timeout_ms = 500,
  -- },
  -- Set the log level. Use `:ConformInfo` to see the location of the log file.
  log_level = vim.log.levels.ERROR,
  -- Conform will notify you when a formatter errors
  notify_on_error = true,
}
