require("bufferline").setup({
    highlights = {
        buffer_selected = {
            bold = false,
            italic = false,
        },
        -- tab_separator_selected = {
        --     underline = "#B66467",
        -- },
    },
    options = {
        hover = {
            enabled = true,
            delay = 200,
            reveal = { "close" }
        }
    }
})
