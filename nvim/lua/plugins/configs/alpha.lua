local alpha_status, alpha = pcall(require, "alpha")
if not alpha_status then
    return
end


local dashboard = require("alpha.themes.dashboard")

local header = {
    type = "text",
    val = {
        [[██╗██╗  ██╗██╗   ██╗███╗   ██╗]],
        [[██║██║ ██╔╝██║   ██║████╗  ██║]],
        [[██║█████╔╝ ██║   ██║██╔██╗ ██║]],
        [[██║██╔═██╗ ██║   ██║██║╚██╗██║]],
        [[██║██║  ██╗╚██████╔╝██║ ╚████║]],
        [[╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝]],
    },
    opts = {
        position = "center",
        hl = "Type",
    },
}

local button = dashboard.button

local buttons = {
    type = "group",
    val = {
        {
            type = "text",
            val = "Quick links",
            opts = { hl = "SpecialComment", position = "center" }
        },
        { type = "padding", val = 1 },
        -- button("s", "  > Sessions", ":SessionManager load_session<CR>"),
        button("n", "  > New file", ":ene <BAR> startinsert <CR>"),
        -- button("f", "  > Find file", ":Telescope find_files <CR>"),
        -- button("r", "  > Recent files", ":Telescope oldfiles <CR>"),
        button("l", "󰒲  > Lazy", ":Lazy <CR>"),
        button("q", "  > Quit", ":qa <CR>"),
    },
    position = "left",
}

local config = {
    layout = {
        { type = "padding", val = 1 },
        header,
        { type = "padding", val = 1 },
        buttons
    },
    opts = {
        margin = 5,
    },
}

-- require("alpha").setup(dashboard.opts)
alpha.setup(config)
