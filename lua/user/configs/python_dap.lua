require("dap-python").setup("/usr/bin/python3")
table.insert(require("dap").configurations.python, {
    type = "python",
    request = "launch",
    name = "MY LAUNCH CONFIG FILE",
    program = "${file}",
    pythonPath = function()
        local cwd = vim.fn.getcwd()
        if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
            return cwd .. "/venv/bin/python"
        elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
            return cwd .. "/.venv/bin/python"
        else
            return "/usr/bin/python3"
        end
    end,
})