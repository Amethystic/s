local Menu = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Username = game:GetService("Players").LocalPlayer.DisplayName
local Player = game:GetService("Players").LocalPlayer
local Global = game.StarterPlayer

local Cheatname = "SEXperiment.pl | "
local sds = "User:"

local Window = Menu:CreateWindow({
    Title = Cheatname .. sds,
    SubTitle = Username,
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.Delete -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Player" })
}

local Options = Menu.Options do
    Tabs.Main:AddButton({
        Title = "Load",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Loading",
                Content = "Which great script would you like to load?",
                Buttons = {
                    {
                        Title = "FF3",
                        Callback = function()
                            print("Confirmed the dialog.")
                            Window:Destroy()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/BladeBallV3.lua"))()
                        end
                    },
                    {
                        Title = "Nexam",
                        Callback = function()
                            print("Cancelled the dialog.")
                            Window:Destroy()
                            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6af56c1753ac6679dee3acbd1fd952e5.lua"))()
                        end
                    }
                }
            })
        end
    })
end
