local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Squex01/BakerySimulatorScript/main/BakerySimulator.lua')))()
local w = library:CreateWindow("Bakery Simulator")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("Collect Ingredient",function(bool)
    shared.toggle = bool
    CollectIngredient = bool
end)

b:Toggle("Place Ingredients",function(bool)
    shared.toggle = bool
    PlaceIngredients = bool
end)

b:Toggle("Take Food",function(bool)
    shared.toggle = bool
    TakeFood = bool
end)

b:Toggle("Sell",function(bool)
    shared.toggle = bool
    Sell = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

--Credits
u:Button("Relax",function()
    setclipboard("Relax")
end)

u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

heheboi = {"https://youtu.be/dQw4w9WgXcQ"}
for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
    if v.ClassName == "TextLabel" then
        if v.Text == game.Players.LocalPlayer.DisplayName.."'s Bakery" then
            heheboi[1] = v.Text
        end
    end
end
if heheboi[1] == "https://youtu.be/dQw4w9WgXcQ" then
    for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
        if v.ClassName == "TextLabel" then
            if v.Text == "Claim Bakery" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Parent.CFrame.Position + Vector3.new(0,0,0))
            end
        end
    end
end

while wait() do
    if CollectIngredient == true then
        string = game:GetService("Players").LocalPlayer.PlayerGui.Main.BottomXP.Bottom.Cart.Frame.TextLabel.Text
        a,b = string:match("(.+)/(.+)")
        if a ~= b then
            for i,v in pairs(game:GetService("Workspace").Ingredients:GetChildren()) do
                if a ~= b then
                    game:GetService("ReplicatedStorage").Remotes.TakeIngredient:FireServer(v)
                end
            end
        end
    end
    
    if PlaceIngredients == true then
        for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
            if v.ClassName == "TextLabel" then
                if v.Text == game.Players.LocalPlayer.DisplayName.."'s Bakery" then
                    for i,v1 in pairs(v.Parent.Parent.Parent.Ovens:GetDescendants()) do
                        if v1.ClassName == "TouchTransmitter" then
                            if string.find(v1.Parent.Parent.Screen.ContentsUI.Contents.Text,"/") then
                                string = v1.Parent.Parent.Screen.ContentsUI.Contents.Text
                                a,b = string:match("(.+)/(.+)")
                                if a ~= b then
                                    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,10,0))
                                    wait(1)
                                    game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,v1.Parent.Position)
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 1)
                                    wait(1)
                                    mouse1press() wait() mouse1release()
                                    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 18
                                end
                            else
                                if v1.Parent.Parent.Screen.ContentsUI.Contents.Text == "Add Ingredients" then
                                    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,10,0))
                                    wait(1)
                                    game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,v1.Parent.Position)
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 1)
                                    wait(1)
                                    mouse1press() wait() mouse1release()
                                    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 18
                                end
                            end
                            if CollectIngredient == true then
                                string = game:GetService("Players").LocalPlayer.PlayerGui.Main.BottomXP.Bottom.Cart.Frame.TextLabel.Text
                                a,b = string:match("(.+)/(.+)")
                                if a ~= b then
                                    for i,v5 in pairs(game:GetService("Workspace").Ingredients:GetChildren()) do
                                        if a ~= b then
                                            game:GetService("ReplicatedStorage").Remotes.TakeIngredient:FireServer(v5)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    if TakeFood == true then
        for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
            if v.ClassName == "TextLabel" then
                if v.Text == game.Players.LocalPlayer.DisplayName.."'s Bakery" then
                    for i,v1 in pairs(v.Parent.Parent.Parent.Ovens:GetDescendants()) do
                        if v1.ClassName == "TouchTransmitter" then
                            if v1.Parent.Parent.Screen.ContentsUI.Contents.Text == "DONE" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,0,0))
                                wait(1)
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 0)
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 1)
                                if Sell == true then
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Tray") then
                                        for i,v5 in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
                                            if v5.ClassName == "TextLabel" then
                                                if v5.Text == game.Players.LocalPlayer.DisplayName.."'s Bakery" then
                                                    for i,v6 in pairs(v5.Parent.Parent.Parent.Shelf:GetDescendants()) do
                                                        if v6.ClassName == "TouchTransmitter" then
                                                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v6.Parent, 0)
                                                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v6.Parent, 1)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    if Sell == true then
        if game.Players.LocalPlayer.Character:FindFirstChild("Tray") then
            for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
                if v.ClassName == "TextLabel" then
                    if v.Text == game.Players.LocalPlayer.DisplayName.."'s Bakery" then
                        for i,v1 in pairs(v.Parent.Parent.Parent.Shelf:GetDescendants()) do
                            if v1.ClassName == "TouchTransmitter" then
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 0)
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 1)
                            end
                        end
                    end
                end
            end
        end
    end
    
    spawn(function()
        if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end 
    end)
end