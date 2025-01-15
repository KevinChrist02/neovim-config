return{
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        config = function ()
            require("render-markdown").setup({
                heading = {
                    enabled = true,
                    render_modes = false,
                    icons = { '󰲡 ', '󰲣 ', '󰲥 ', '󰲧 ', '󰲩 ', '󰲫 ' },
                    -- Determines how icons fill the available space:
                    --  right:   '#'s are concealed and icon is appended to right side
                    --  inline:  '#'s are concealed and icon is inlined on left side
                    --  overlay: icon is left padded with spaces and inserted on left hiding any additional '#'
                    position = 'overlay',
                    signs = { '󰫎 ' },
                    -- Width of the heading background:
                    --  block: width of the heading text
                    --  full:  full width of the window
                    width = 'block',
                    left_margin = 0,
                    left_pad = 0,
                    right_pad = 0,
                    min_width = 0,
                    border = false,
                    -- Always use virtual lines for heading borders instead of attempting to use empty lines
                    border_virtual = false,
                    -- Highlight the start of the border using the foreground highlight
                    border_prefix = false,
                    -- Used above heading for border
                    above = '▄',
                    -- Used below heading for border
                    below = '▀',
                    -- The 'level' is used to index into the list using a clamp
                    -- Highlight for the heading icon and extends through the entire line
                    },
                    code = {
                        enabled = true,
                        render_modes = false,
                        sign = true,
                        -- Determines how code blocks & inline code are rendered:
                        --  none:     disables all rendering
                        --  normal:   adds highlight group to code blocks & inline code, adds padding to code blocks
                        --  language: adds language icon to sign column if enabled and icon + name above code blocks
                        --  full:     normal + language
                        style = 'full',
                        -- Determines where language icon is rendered:
                        --  right: right side of code block
                        --  left:  left side of code block
                        position = 'left',
                        -- Width of the code block background:
                        --  block: width of the code block
                        --  full:  full width of the window
                        width = 'block',
                        -- Amount of margin to add to the left of code blocks
                        -- If a floating point value < 1 is provided it is treated as a percentage of the available window space
                        -- Margin available space is computed after accounting for padding
                        left_margin = 0,
                        -- Amount of padding to add to the left of code blocks
                        -- If a floating point value < 1 is provided it is treated as a percentage of the available window space
                        left_pad = 0,
                        -- Amount of padding to add to the right of code blocks when width is 'block'
                        -- If a floating point value < 1 is provided it is treated as a percentage of the available window space
                        right_pad = 0,
                        -- Minimum width to use for code blocks when width is 'block'
                        min_width = 0,
                        -- Determines how the top / bottom of code block are rendered:
                        --  none:  do not render a border
                        --  thick: use the same highlight as the code body
                        --  thin:  when lines are empty overlay the above & below icons
                        border = 'thin',
                        -- Used above code blocks for thin border
                        above = '▄',
                        -- Used below code blocks for thin border
                        below = '▀',
                        -- Highlight for code blocks
                        highlight = 'RenderMarkdownCode',
                        -- Highlight for language, overrides icon provider value
                        highlight_language = nil,
                        -- Padding to add to the left & right of inline code
                        inline_pad = 0,
                        -- Highlight for inline code
                        highlight_inline = 'RenderMarkdownCodeInline',
                    },
                    dash = {
                        -- Turn on / off thematic break rendering
                        enabled = true,
                        -- Additional modes to render dash
                        render_modes = false,
                        -- Replaces '---'|'***'|'___'|'* * *' of 'thematic_break'
                        -- The icon gets repeated across the window's width
                        icon = '─',
                        -- Width of the generated line:
                        --  <number>: a hard coded width value, if a floating point value < 1 is provided it is
                        --            treated as a percentage of the available window space
                        --  full:     full width of the window
                        width = 75,
                    },
                    pipe_table = {
                        enabled = true,
                        render_modes = false,
                        -- Pre configured settings largely for setting table border easier
                        --  heavy:  use thicker border characters
                        --  double: use double line border characters
                        --  round:  use round border corners
                        --  none:   does nothing
                        preset = 'round',
                        -- Determines how the table as a whole is rendered:
                        --  none:   disables all rendering
                        --  normal: applies the 'cell' style rendering to each row of the table
                        --  full:   normal + a top & bottom line that fill out the table when lengths match
                        style = 'full',
                        -- Determines how individual cells of a table are rendered:
                        --  overlay: writes completely over the table, removing conceal behavior and highlights
                        --  raw:     replaces only the '|' characters in each row, leaving the cells unmodified
                        --  padded:  raw + cells are padded to maximum visual width for each column
                        --  trimmed: padded except empty space is subtracted from visual width calculation
                        cell = "padded",
                        -- Amount of space to put between cell contents and border
                        padding = 1,
                        -- Minimum column width to use for padded or trimmed cell
                        min_width = 1,
                        -- Characters used to replace table border
                        -- Correspond to top(3), delimiter(3), bottom(3), vertical, & horizontal
                        -- stylua: ignore
                        border = {
                            '┌', '┬', '┐',
                            '├', '┼', '┤',
                            '└', '┴', '┘',
                            '│', '─',
                        },
                    },
                })
        end,
    },
}
