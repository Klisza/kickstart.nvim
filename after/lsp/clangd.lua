-- ~/.config/nvim/after/lsp/clangd.lua
return {
  cmd = {
    'clangd',
    '--background-index',
    '--clang-tidy',
    '--enable-config', -- use .clangd / config.yaml
    '--query-driver=/sbin/riscv64-linux-gnu-*', -- let clangd query your RISC-V gcc
  },
}
