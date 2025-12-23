return {
  {
    'saghen/blink.cmp',
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      opts.sources.default = opts.sources.default or { 'lsp', 'path', 'snippets', 'lazydev' }
      table.insert(opts.sources.default, 'buffer')
      opts.keymap = opts.keymap or {}
      opts.keymap.preset = 'enter'
    end,
  },
}
