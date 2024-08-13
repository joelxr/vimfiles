require("conform").setup({
  formatters_by_ft = {
    javascript = { "eslint_d" },
    typescript = { "eslint_d" },
    vue = { "eslint_d" },
    json = { "jq" },
    ["*"] = { "trim_whitespace", "trim_newlines" },
  },
})

