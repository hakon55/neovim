return {
  "nvimdev/dashboard-nvim",
  optional = true,
  opts = function(_, opts)
    local projects = {
      action = "Telescope projects",
      desc = " Projects",
      icon = " ",
      key = "p",
    }

    projects.desc = projects.desc .. string.rep(" ", 43 - #projects.desc)
    projects.key_format = "  %s"

    table.insert(opts.config.center, 3, projects)
    table.remove(opts.config.center, 4)
  end,
}
