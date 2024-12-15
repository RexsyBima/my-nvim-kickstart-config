-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- LazyVim configuration for neocodeium key mappings
return {
  require('telescope').setup {
    defaults = {
      file_ignore_patterns = {},
      -- Other default settings can be added here
    },
    pickers = {
      find_files = {
        hidden = true, -- This enables searching for hidden files
      },
    },
  },
  { 'tweekmonster/django-plus.vim' },
}
