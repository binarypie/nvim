return {
  -- 1. Ensure tofu-ls is installed by mason.nvim
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "tofu-ls" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Disable terraformls
        terraformls = {},
        -- Configure tofuls
        tofuls = {
          cmd = { "tofu-ls", "serve" },
          filetypes = { "terraform", "tf", "tfvars" },
          root_dir = require("lspconfig.util").root_pattern(".terraform", ".git"),
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        tofu_fmt = {
          command = "tofu",
          args = { "fmt", "-" },
          stdin = true,
        },
      },
      formatters_by_ft = {
        terraform = { "tofu_fmt" },
        tf = { "tofu_fmt" },
        tfvars = { "tofu_fmt" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      -- Define the "tofu_validate" linter
      opts.linters.tofu_validate = {
        command = "tofu",
        -- Use the -json flag for reliable parsing
        args = { "validate", "-json" },
        -- We are no longer using stdin, the command runs on the directory
        stdin = false,
        -- Tell nvim-lint to use its built-in JSON parser
        format = "json",
        -- Specify where the list of diagnostics is in the JSON
        json_json_path = "diagnostics",
        -- Map the JSON keys from OpenTofu's output to what nvim-lint expects
        json_keys = {
          filename = "range.filename",
          line = "range.start.line",
          col = "range.start.column",
          message = "summary",
          severity = "severity",
        },
        -- Map OpenTofu's severity names to Neovim's diagnostic severities
        severity_map = {
          error = vim.diagnostic.severity.ERROR,
          warning = vim.diagnostic.severity.WARN,
        },
      }

      -- Set this new linter for the correct filetypes
      opts.linters_by_ft.terraform = { "tofu_validate" }
      opts.linters_by_ft.tf = { "tofu_validate" }

      -- It's good practice to also remove the default terraform linter
      opts.linters_by_ft.terraform = vim.tbl_filter(function(linter)
        return linter ~= "terraform_validate"
      end, opts.linters_by_ft.terraform or {})
      table.insert(opts.linters_by_ft.terraform, "tofu_validate")

      opts.linters_by_ft.tf = vim.tbl_filter(function(linter)
        return linter ~= "terraform_validate"
      end, opts.linters_by_ft.tf or {})
      table.insert(opts.linters_by_ft.tf, "tofu_validate")

      return opts
    end,
  },
}
