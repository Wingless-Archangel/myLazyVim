return {
  "nvim-neorg/neorg",
  ft = "norg",
  cmd = "Neorg",
  dependencies = { "vhyrro/luarocks.nvim" },
  version = "*",
  priority = 30,
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = { config = { icon_preset = "diamond" } },
        ["core.integrations.nvim-cmp"] = {},
        ["core.integrations.treesitter"] = {},
        ["core.syntax"] = {},
        ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
        ["core.keybinds"] = {
          config = {
            default_keybinds = true,
            neorg_leader = "<Leader><Leader>",
          },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/notes",
            },
          },
        },
        ["core.esupports.metagen"] = { config = { type = "auto", update_date = true } },
        ["core.qol.toc"] = {},
        ["core.qol.todo_items"] = {},
        ["core.looking-glass"] = {},
        ["core.presenter"] = { config = { zen_mode = "zen-mode" } },
        ["core.export"] = {},
        ["core.export.markdown"] = { config = { extensions = "all" } },
        ["core.summary"] = {},
        ["core.tangle"] = { config = { report_on_empty = false } },
        -- ["core.ui.calendar"] = {},
      },
    })
  end,
}
