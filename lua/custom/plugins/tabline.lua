return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  opts = function()
    return {
      options = {
        theme = 'auto',
        globalstatus = true,
        -- Add any other options you want
      },
      sections = {
        -- Your existing sections configuration
      },
      tabline = {
        lualine_a = { 'buffers' },
        lualine_b = { 'branch' },
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'tabs' },
      },
    }
  end,
}
