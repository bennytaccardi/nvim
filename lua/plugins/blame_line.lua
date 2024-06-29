return {
  -- Plugin specification for LazyVim
  {
    "braxtons12/blame_line.nvim",
    config = function()
      -- Load and configure the plugin
      require("blame_line").setup({
        -- Add any necessary setup options here
      })
    end,
  },
}
