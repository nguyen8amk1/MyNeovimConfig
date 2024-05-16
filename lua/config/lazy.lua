local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    -- bootstrap lazy.nvim
    -- stylua: ignore
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- require("monokai-pro").setup({
--   transparent_background = false,
--   terminal_colors = true,
--   devicons = true, -- highlight the icons of `nvim-web-devicons`
--   styles = {
--     comment = { italic = true },
--     keyword = { italic = true }, -- any other keyword
--     type = { italic = true }, -- (preferred) int, long, char, etc
--     storageclass = { italic = true }, -- static, register, volatile, etc
--     structure = { italic = true }, -- struct, union, enum, etc
--     parameter = { italic = true }, -- parameter pass in function
--     annotation = { italic = true },
--     tag_attribute = { italic = true }, -- attribute of tag in reactjs
--   },
--   filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
--   -- Enable this will disable filter option
--   day_night = {
--     enable = false, -- turn off by default
--     day_filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
--     night_filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
--   },
--   inc_search = "background", -- underline | background
--   background_clear = {
--     -- "float_win",
--     "toggleterm",
--     "telescope",
--     -- "which-key",
--     "renamer",
--     "notify",
--     -- "nvim-tree",
--     -- "neo-tree",
--     -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
--   }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
--   plugins = {
--     bufferline = {
--       underline_selected = false,
--       underline_visible = false,
--     },
--     indent_blankline = {
--       context_highlight = "default", -- default | pro
--       context_start_underline = false,
--     },
--   },
-- })
