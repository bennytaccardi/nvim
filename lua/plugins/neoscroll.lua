-- Add this to your LazyVim plugin list
return {
  "karb94/neoscroll.nvim",
  config = function()
    local neoscroll = require("neoscroll")

    -- Setup Neoscroll with the default easing function
    neoscroll.setup({
      easing = "quadratic",
    })

    -- Define custom key mappings with specific easing functions and durations
    local keymap = {
      -- Use the "sine" easing function for <C-u> and <C-d>
      ["<C-u>"] = function()
        neoscroll.ctrl_u({ duration = 250, easing = "sine" })
      end,
      ["<C-d>"] = function()
        neoscroll.ctrl_d({ duration = 250, easing = "sine" })
      end,
      -- Use the "circular" easing function for <C-b> and <C-f>
      ["<C-b>"] = function()
        neoscroll.ctrl_b({ duration = 450, easing = "circular" })
      end,
      ["<C-f>"] = function()
        neoscroll.ctrl_f({ duration = 450, easing = "circular" })
      end,
      -- Use the default easing function defined in setup() for <C-y> and <C-e>
      ["<C-y>"] = function()
        neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 })
      end,
      ["<C-e>"] = function()
        neoscroll.scroll(0.1, { move_cursor = false, duration = 100 })
      end,
    }

    -- Apply the key mappings for normal, visual, and select modes
    local modes = { "n", "v", "x" }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end
  end,
}
