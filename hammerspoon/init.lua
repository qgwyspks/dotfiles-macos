-- 配置重载
function reloadConfig(files)
    doReload = false
    for _, file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")

-- hs.loadSpoon("SpoonInstall")

AppLauncher = hs.loadSpoon("AppLauncher")
AppLauncher.modifiers = { "ctrl", "shift" }
AppLauncher:bindHotkeys({
    t = "Alacritty",  -- Ctrl + Shift + T
    q = "QQ",
    w = "WeChat",
    e = "Microsoft Edge",
})
--[[
hs.hotkey.bind({ 'ctrl', 'alt' }, 't', function()
    hs.application.launchOrFocus("Alacritty")
end)
--]]

-- 自动切换输入法
InputSourceSwitch = hs.loadSpoon("InputSourceSwitch")
InputSourceSwitch:setApplications({
    ["QQ"] = "Pinyin - Simplified",
    -- ["WeChat"] = "Pinyin - Simplified",
    ["微信"] = "Pinyin - Simplified",
    ["Alacritty"] = "ABC"
})
InputSourceSwitch:start()

