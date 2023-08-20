vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        -- use nvim internal lsp
        diagnostics = "nvim_lsp",
        -- keep the left space for nvim_lsp
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }},
        close_command = "Bdelete! %d",
    }
}
