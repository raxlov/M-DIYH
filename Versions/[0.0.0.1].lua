if _G["M&DIY Hub"] ~= nil then
    _G["M&DIY Hub"].Gui.Main:Destroy()
    _G["M&DIY Hub"] = nil
end

local Data = {
    Name = "M&DIY Hub";
    FullName = "Make & Do It Yourself Hub";
    Version = "0.0.0.1";
    Gui = nil;
}
local Gui = {}

Gui.Main = Instance.new("ScreenGui")
Gui.Main.Parent = game.CoreGui
Gui.Close = Instance.new("TextButton")
Gui.Close.Parent = Gui.Main
Gui.Close.Text = "X"
Gui.Close.Size = UDim2.new(0, 50, 0, 50)
Gui.Close.Position = UDim2.new(1, 0, 0, 0)
Gui.Close.AnchorPoint = Vector2.new(1, 0)
Gui.Close.MouseButton1Click:Connect(function()
    _G["M&DIY Hub"] = nil
    Gui.Main:Destroy()
end)

Gui.Title = Instance.new("TextLabel")
Gui.Title.Parent = Gui.Main
Gui.Title.Text = Data.FullName .. " - v" .. Data.Version
Gui.Title.Size = UDim2.new(0.5, -50, 0, 50)
Gui.Title.Position = UDim2.new(0.5, 0, 0.1, 0)
Gui.Title.AnchorPoint = Vector2.new(0.5, 1)

Gui.Text = Instance.new("TextBox")
Gui.Text.Parent = Gui.Main
Gui.Text.Size = UDim2.new(0.5, 0, 0.5, 0)
Gui.Text.Position = UDim2.new(0.5, 0, 0.5, 0)
Gui.Text.AnchorPoint = Vector2.new(0.5, 0.5)
Gui.Text.PlaceholderText = "Enter your code here..."
Gui.Text.ClearTextOnFocus = false
Gui.Text.MultiLine = true
Gui.Text.Text = ""

Gui.Run = Instance.new("TextButton")
Gui.Run.Parent = Gui.Main
Gui.Run.Text = "Run"
Gui.Run.Size = UDim2.new(0.2, 0, 0.1, 0)
Gui.Run.Position = UDim2.new(1, 0, 0.5, 0)
Gui.Run.AnchorPoint = Vector2.new(1, 0)
Gui.Run.MouseButton1Click:Connect(function()
    loadstring(Gui.Text.Text)()
end)

Data.Gui = Gui

_G["M&DIY Hub"] = Data
