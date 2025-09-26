return {
  "snacks.nvim",
  opts = {
    picker = {
      files = {
        sources = {
          exclude = { "build/**", "target/**" },
          hidden = true,
          ignored = true,
        },
        grep = {
          exclude = { "build/**", "target/**" },
          hidden = true,
          ignored = true,
        },
        explorer = {
          exclude = { "build/**", "target/**" },
          hidden = true,
          ignored = true,
        },
      },
    },
    dashboard = {
      -- dashboard configuration
      preset = {
        header = [[
        
 ██╗   ██╗ ██╗ ███╗   ███╗
 ██║   ██║ ██║ ████╗ ████║
 ██║   ██║ ██║ ██╔████╔██║
 ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
  ╚████╔╝  ██║ ██║ ╚═╝ ██║
   ╚═══╝   ╚═╝ ╚═╝     ╚═╝
        ]],
      },
    },
  },
}
