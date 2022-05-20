local dap = require("dap")

dap.adapters.lldb = {
    type = "executable",
    command = "/usr/bin/lldb-vscode-14",
    name = "lldb",
}
dap.adapters.gdb = {
    type = "executable",
    command = "/usr/bin/gdb",
    name = "gdb",
}
dap.configurations.cpp = {
    {
        name = "Launch",
        type = "gdb",
        request = "launch",
        MIMode = "gdb",
        miDebuggerPath = "/usr/bin/gdb",
        program = function()
            return vim.fn.input("Path to executable:", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = true,
        args = {},
        setupCommands = {
            {
                text = "-enable-pretty-printing",
                description = "enable pretty printing",
                ignoreFailures = false,
            },
        },
    },
}
