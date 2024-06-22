if os.getenv("COLORTERM") == "truecolor" then
    vim.cmd("colorscheme base16-nord")
    LUALINE_THEME = "base16"
else
    LUALINE_THEME = "16color"
end

