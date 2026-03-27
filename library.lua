local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/coreatl4ntic/library/refs/heads/main/framework.lua"))()

local Window = Library:Window({
    Title = "atl4ntic [ Menu ]",
    Desc = "atl4ntic on hee",
    Icon = 105059922903197,
    Theme = "Dark",
    Config = {
        Keybind = Enum.KeyCode.LeftControl,
        Size = UDim2.new(0, 500, 0, 400)
    },
    CloseUIButton = {
        Enabled = true,
        Text = "x2zu"
    }
})

local SidebarLine = Instance.new("Frame")
SidebarLine.Size = UDim2.new(0, 1, 1, 0)
SidebarLine.Position = UDim2.new(0, 140, 0, 0)
SidebarLine.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SidebarLine.BorderSizePixel = 0
SidebarLine.ZIndex = 5
SidebarLine.Name = "SidebarLine"
SidebarLine.Parent = game:GetService("CoreGui")

local Tab = Window:Tab({Title = "Main", Icon = "star"}) do

    Tab:Section({Title = "All UI Components"})

    Tab:Toggle({
        Title = "Enable Feature",
        Desc = "Toggle to enable or disable the feature",
        Value = false,
        Callback = function(v)
            print("Toggle:", v)
        end
    })

    Tab:Button({
        Title = "Run Action",
        Desc = "Click to perform something",
        Callback = function()
            print("Button clicked!")
            Window:Notify({
                Title = "Button",
                Desc = "Action performed successfully.",
                Time = 3
            })
        end
    })

    Tab:Textbox({
        Title = "Input Text",
        Desc = "Type something here",
        Placeholder = "Enter value",
        Value = "",
        ClearTextOnFocus = false,
        Callback = function(text)
            print("Textbox value:", text)
        end
    })

    Tab:Slider({
        Title = "Set Speed",
        Min = 0,
        Max = 100,
        Rounding = 0,
        Value = 25,
        Callback = function(val)
            print("Slider:", val)
        end
    })

    Tab:Dropdown({
        Title = "Choose Option",
        List = {"Option 1", "Option 2", "Option 3"},
        Value = "Option 1",
        Callback = function(choice)
            print("Selected:", choice)
        end
    })

    local CodeBlock = Tab:Code({
        Title = "Example Code",
        Code = "-- This is a code preview\nprint('Hello world')"
    })

    task.delay(5, function()
        CodeBlock:SetCode("-- Updated!\nprint('New content loaded')")
    end)
end

Window:Line()

local Extra = Window:Tab({Title = "Extra", Icon = "tag"}) do
    Extra:Section({Title = "About"})
    Extra:Button({
        Title = "Show Message",
        Desc = "Display a popup",
        Callback = function()
            Window:Notify({
                Title = "Fluent UI",
                Desc = "Everything works fine!",
                Time = 3
            })
        end
    })
end
Window:Line()
local Extra = Window:Tab({Title = "Settings", Icon = "wrench"}) do
    Extra:Section({Title = "Config"})
    Extra:Button({
        Title = "Show Message",
        Desc = "Display a popup",
        Callback = function()
            Window:Notify({
                Title = "Fluent UI",
                Desc = "Everything works fine!",
                Time = 3
            })
        end
    })
end

Window:Notify({
    Title = "atl4ntic",
    Desc = "All components loaded successfully! Credits leak: @atl4ntic",
    Time = 4
})
