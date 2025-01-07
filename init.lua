require("config.options")
if vim.env.LAZY_STDPATH then
  load(vim.fn.system("curl -s https://raw.githubusercontent.com/atolycs/dev-bootstrap/main/nvim/bootstrap.lua"))()
  require("lazy").setup({})
else
  require("config.lazy")
end
print("Hello World!")
