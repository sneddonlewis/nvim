vim.g.mapleader = " "
-- NetRW Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move things highlighted in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- half page up and down with centered cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- paste over but keep the original yanked to paste again
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- remap ctrl-c to escape
vim.keymap.set("n", "<C-c>", "<Esc>")

-- don't let me accidentally press 'Q' ever
vim.keymap.set("n", "Q", "<nop>")

-- Go return error snippet
function goReturnErr()
    local current_line = vim.fn.getline('.')
    local indent = vim.fn.indent('.')
    local new_lines = {
        string.rep(" ", indent) .. "if err != nil {",
        string.rep(" ", indent + 4) .. "return err",
        string.rep(" ", indent) .. "}",
    }

    -- Append the new lines
    vim.fn.append('.', new_lines)

    -- Move the cursor to the second line of the inserted code
    vim.fn.cursor(vim.fn.line('.') + 1, indent + 4)
end

-- Insert Go return error snippet
vim.keymap.set('n', '<leader>ee', [[:lua goReturnErr()<CR>]],
{ noremap = true, silent = true })

