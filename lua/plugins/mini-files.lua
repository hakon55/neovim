local currentDirText = "Open Current Dir"
local projectRootDirText = "Open Project Root"
return {
  "echasnovski/mini.files",
  opts = {
    windows = {
      preview = true,
      width_focus = 30,
      width_preview = 30,
    },
    options = {
      -- Whether to use for editing directories
      -- Disabled by default in LazyVim because neo-tree is used for that
      use_as_default_explorer = true,
    },
  },

  keys = {
    {
      "<leader>fm",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = currentDirText,
    },
    {
      "<leader>fM",
      function()
        require("mini.files").open(vim.loop.cwd(), true)
      end,
      desc = projectRootDirText,
    },
    { "<leader>e", "<leader>fm", desc = currentDirText, remap = true },
    { "<leader>E", "<leader>fM", desc = projectRootDirText, remap = true },
  },

  config = function(_, opts)
    require("mini.files").setup(opts)

    local show_dotfiles = true
    local filter_show = function(fs_entry)
      return true
    end
    local filter_hide = function(fs_entry)
      return not vim.startswith(fs_entry.name, ".")
    end

    local toggle_dotfiles = function()
      show_dotfiles = not show_dotfiles
      local new_filter = show_dotfiles and filter_show or filter_hide
      require("mini.files").refresh({ content = { filter = new_filter } })
    end

    vim.api.nvim_create_autocmd("User", {
      pattern = "MiniFilesBufferCreate",
      callback = function(args)
        local buf_id = args.data.buf_id
        -- Tweak left-hand side of mapping to your liking
        vim.keymap.set("n", "g.", toggle_dotfiles, { buffer = buf_id })
      end,
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "MiniFilesActionRename",
      callback = function(event)
        require("lazyvim.util").lsp.on_rename(event.data.from, event.data.to)
      end,
    })
  end,
}
