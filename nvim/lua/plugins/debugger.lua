local dap = require("dap")
dap.adapters.codelldb = {
  type = 'server',
  host = '127.0.0.1',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = '/home/fonndes/.local/share/nvim/mason/bin/codelldb',
    args = {"--port", "${port}"},
   -- On windows you may have to uncomment this:
   -- detached = false,
 }
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

dap.configurations.c = dap.configurations.cpp
