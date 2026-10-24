vim.api.nvim_buf_create_user_command(0, "SplRun", function()
	vim.cmd("write")
	vim.cmd("botright split | terminal shakespeare run " .. vim.fn.shellescape(vim.fn.expand("%:p")))
end, {})

vim.keymap.set("n", "<leader>r", "<cmd>SplRun<cr>", { buffer = true, desc = "Run play" })
