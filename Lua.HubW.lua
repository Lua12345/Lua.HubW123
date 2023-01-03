local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()



local Window = Rayfield:CreateWindow({
	Name = "Lua.Hub",
	LoadingTitle = "Lua.Hub",
	LoadingSubtitle = "by Lua | Creds to Rayfield",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Lua.Hub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "dDk9ZVAY9r", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = false -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Lua.Hub",
		Subtitle = "Key System",
		Note = "Join the discord https://discord.gg/dDk9ZVAY9r",
		FileName = "Lua.Hub Key",
		SaveKey = false,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "hwid"
	}
})

local Tab = Window:CreateTab("Da hood | Anti", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Anti Lock")

local Button = Tab:CreateButton({
	Name = "sky aa",
	Callback = function()
		getgenv().Sky = true 
getgenv().SkyAmount = 90

game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Sky ~= false then 
    local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,      getgenv().SkyAmount,0) 
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
    end 
end)
	end,
})

local Button = Tab:CreateButton({
	Name = "desync aa",
	Callback = function()
		getgenv().VelocityChanger = true
getgenv().Velocity = Vector3.new(200,0,200)


--// main scapt | realkscapter... omg
local Players     = game:GetService("Players")
local RunService  = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Character   = LocalPlayer.Character
local RootPart    = Character:FindFirstChild("HumanoidRootPart")

local Heartbeat, RStepped, Stepped = RunService.Heartbeat, RunService.RenderStepped, RunService.Stepped

LocalPlayer.CharacterAdded:Connect(function(NewCharacter)
   Character = NewCharacter
end)

local RVelocity, YVelocity = nil, 0.1

while true do
   if VelocityChanger then
       --// this a dumb check asnilsadsa
       if (not RootPart) or (not RootPart.Parent) or (not RootPart.Parent.Parent) then
           warn("weird ahh died")
           RootPart = Character:FindFirstChild("HumanoidRootPart")
       else
           RVelocity = RootPart.Velocity
   
           RootPart.Velocity = type(Velocity) == "vector" and Velocity or Velocity(RVelocity)
       
           RStepped:wait()
       
           RootPart.Velocity = RVelocity
       end
   end
   
   Heartbeat:wait()
end
	end,
})

local Button = Tab:CreateButton({
	Name = "underground aa B OFF/ON",
	Callback = function()
		local Toggled = false
local KeyCode = 'B'


function AA()
    local oldVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, -70, oldVelocity.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, oldVelocity.Y, oldVelocity.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, -70, oldVelocity.Z)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 4.14
end

game:GetService('UserInputService').InputBegan:Connect(function(Key)
    if Key.KeyCode == Enum.KeyCode[KeyCode:upper()] and not game:GetService('UserInputService'):GetFocusedTextBox() then
        if Toggled then
            Toggled = false
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = 1.85

        elseif not Toggled then
            Toggled = true

            while Toggled do
                AA()
                task.wait()
            end
        end
    end
end)
	end,
})








local Tab = Window:CreateTab("Da hood | Dont Get Caught", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Dont Get Caught")

local Button = Tab:CreateButton({
	Name = "Anti Aim Viewer",
	Callback = function()
		hookfunction(game.Players.LocalPlayer.IsInGroup, function() return true end)
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Lua  AntiAimViewer", Text = "Lua.Hub", Duration = 4,});
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/AntiAimViewer"))()
	end,
})


local Button = Tab:CreateButton({
	Name = "Resolver",
	Callback = function()
		local RunService = game:GetService("RunService")

local function zeroOutYVelocity(hrp)
    hrp.Velocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
    hrp.AssemblyLinearVelocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
end

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(function(character)
        local hrp = character:WaitForChild("HumanoidRootPart")
        zeroOutYVelocity(hrp)
    end)
end

local function onPlayerRemoving(player)
    player.CharacterAdded:Disconnect()
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
game.Players.PlayerRemoving:Connect(onPlayerRemoving)

RunService.Heartbeat:Connect(function()
    pcall(function()
        for i, player in pairs(game.Players:GetChildren()) do
            if player.Name ~= game.Players.LocalPlayer.Name then
                local hrp = player.Character.HumanoidRootPart
                zeroOutYVelocity(hrp)
            end
        end
    end)
end)
	end,
})

local Button = Tab:CreateButton({
	Name = "Memory Spoofer",
	Callback = function()
		local Settings = {
			range1 = 500,
			range2 = 800,
			
		}
		
		for __, v in pairs(game.CoreGui.RobloxGui.PerformanceStats:GetChildren()) do
			if v.Name == "PS_Button" and v.StatsMiniTextPanelClass.TitleLabel.Text == "Mem" then
				Memory = v.StatsMiniTextPanelClass.ValueLabel
			end
		end
		
		Memory:GetPropertyChangedSignal("Text"):Connect(function()
			local Random = math.random(Settings.range1,Settings.range2)
			Random = Random * 1.23 
			Memory.Text = "".. Random .." MB"
		end)
	end,
})





local Tab = Window:CreateTab("Da hood | Locks", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Best locks")

local Button = Tab:CreateButton({
	Name = "2 Tap 40 - 95 Q OFF/ON",
	Callback = function()
		
-- Toggle
getgenv().Target = true
-- Configuration
    getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 0.1291293
getgenv().ChatMode = false
getgenv().NotifMode = true
    getgenv().PartMode = true
    getgenv().AirshotFunccc = false
    getgenv().Partz = "HumanoidRootPart"
    --
    _G.Types = {
        Ball = Enum.PartType.Ball,
        Block = Enum.PartType.Block, 
        Cylinder = Enum.PartType.Cylinder
    }
    
    --variables                 
    	local Tracer = Instance.new("Part", game.Workspace)
    Tracer.Name = "gay"	
    Tracer.Anchored = true		
    Tracer.CanCollide = true
    Tracer.Transparency = 0.3
    Tracer.Parent = game.Workspace	
    Tracer.Shape = _G.Types.Block
    Tracer.Size = Vector3.new(14,14,14)
    Tracer.Color = Color3.fromRGB(128,128,128)
    
    --
    local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local Runserv = game:GetService("RunService")

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255,255,255)
circle.Thickness = 0
circle.NumSides = 732
circle.Radius = 120
circle.Thickness = 1
circle.Transparency = 5
circle.Visible = true
circle.Filled = false

Runserv.RenderStepped:Connect(function()
    circle.Position = Vector2.new(mouse.X,mouse.Y+35)
end)
    
    	local guimain = Instance.new("Folder", game.CoreGui)
    	local CC = game:GetService"Workspace".CurrentCamera
    local LocalMouse = game.Players.LocalPlayer:GetMouse()
    	local Locking = false
    
    	
    --
    if getgenv().valiansh == true then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "Lua.Hub",
                   Text = "Already Loaded!",
                   Duration = 5
        
                   })
        return
    end
    
    getgenv().valiansh = true
    
        local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               if getgenv().Target == true then
               Locking = not Locking
               
               if Locking then
               Plr =  getClosestPlayerToCursor()
                if getgenv().ChatMode then
        local A_1 = "Target: "..tostring(Plr.Character.Humanoid.DisplayName) local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
        	end	
               if getgenv().NotifMode then
    			game.StarterGui:SetCore("SendNotification", {
        Title = "";
        Text = "Target: "..tostring(Plr.Character.Humanoid.DisplayName);
    
    })
    end
    elseif not Locking then
         if getgenv().ChatMode then
        local A_1 = "Unlocked!" local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
        	end	
        if getgenv().NotifMode then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "Lua.Hub",
                   Text = "Unlocked",
                   Duration = 5
               })
           elseif getgenv().Target == false then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "",
                   Text = "Target isn't enabled",
                   Duration = 5
     
                   })
               
               end
                  
 
 end     end   
end
end
end)
	
	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = circle.Radius

		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
				local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
				local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
				if magnitude < shortestDistance then
					closestPlayer = v
					shortestDistance = magnitude
				end
			end
		end
		return closestPlayer
	end
--
if getgenv().PartMode then
	game:GetService"RunService".Stepped:connect(function()
		if Locking and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
			Tracer.CFrame = CFrame.new(Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*Prediction))
		else
			Tracer.CFrame = CFrame.new(0, 9999, 0)

		end
	end)
end

    
    
    --
	local rawmetatable = getrawmetatable(game)
	local old = rawmetatable.__namecall
	setreadonly(rawmetatable, false)
	rawmetatable.__namecall = newcclosure(function(...)
		local args = {...}
		if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction)
			return old(unpack(args))
		end
		return old(...)
	end)
	if getgenv.AirshotFunccc then
	if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        getgenv().Partz = "RightFoot"
    else
        getgenv().Partz = "LowerTorso"
	end
end
	end,
})


local Button = Tab:CreateButton({
	Name = "Lua Lock 40 - 95 C OFF/ON",
	Callback = function()
		local configs = {
			main = {
				enabled = true,
				aimlockkey = "c",
				prediction = 0.1386324762,
				aimpart = 'LowerTorso', -- Head, UpperTorso, HumanoidRootPart, LowerTorso
				notifications = true
			}
		}
		
		
		local boxsettings = {
			box = {
				Showbox = true,
		
				boxsize = Vector3.new(1, 8.7, 1), -- Box Size
				markercolor = Color3.fromRGB(153, 153, 255), -- Marrker Color
				markersize = UDim2.new(0.5, 0, 0.5, 0.2) -- Marker Size
			}
		}
		
		
		local box = Instance.new("Part", game.Workspace)
		
		local Mouse = game.Players.LocalPlayer:GetMouse()
		
		function makemarker(Parent, Adornee, Color, Size, Size2)
			local box = Instance.new("BillboardGui", Parent)
			box.Name = "Lua.Hub"
			box.Adornee = Adornee
			box.Size = UDim2.new(Size, Size2, Size, Size2)
			box.AlwaysOnTop = true
		
			local a = Instance.new("Frame", box)
			a.Size = boxsettings.box.markersize
			a.BackgroundColor3 = Color
		
			local g = Instance.new("UICorner", a)
			g.CornerRadius = UDim.new(50, 25)
			return (box)
		end
		
		local Plr
		Mouse.KeyDown:Connect(function(KeyPressed)
			if KeyPressed == (configs.main.aimlockkey) then
				if configs.main.enabled == true then
					configs.main.enabled = false
					if configs.main.notifications == true then
						Plr = FindClosestUser()
						game.StarterGui:SetCore("SendNotification", {
							Title = "Lua.Hub",
							Text = "REMADE;"
						})
					end
				else
					Plr = FindClosestUser()
					configs.main.enabled = true
					if configs.main.notifications == true then
						game.StarterGui:SetCore("SendNotification", {
							Title = "SplittaWare",
							Text = "Locked On;  " .. tostring(Plr.Character.Humanoid.DisplayName)
						})
					end
				end
			end
		end)
		
		local data = game.Players:GetPlayers()
		function noob(player)
			local character
			repeat
				wait()
			until player.Character
			local handler = makemarker(guimain, player.Character:WaitForChild(configs.main.aimpart),
				Color3.fromRGB(153, 153, 255), 0.10, 8)
			handler.Name = player.Name
			player.CharacterAdded:connect(function(Char)
				handler.Adornee = Char:WaitForChild("HumanoidRootPart")
			end)
		end
		
		for i = 1, #data do
			if data[i] ~= game.Players.LocalPlayer then
				noob(data[i])
			end
		end
		
		game.Players.PlayerAdded:connect(function(Player)
			noob(Player)
		end)
		
		spawn(function()
			box.Anchored = true
			box.CanCollide = false
			box.Size = boxsettings.box.boxsize
			if boxsettings.box.Showbox == true then
				box.Transparency = 0.3
			else
				box.Transparency = 0.2
			end
			makemarker(box, box, boxsettings.box.markercolor, 0.40, 1)
		end)
		
		function FindClosestUser()
			local closestPlayer
			local ShortestDistance = 300
		
			for i, v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
					v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
					local pos = game:GetService "Workspace".CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
					local magnitude = (Vector2.new(pos.X, pos.Y) -
										  Vector2.new(game.Players.LocalPlayer:GetMouse().X,
							game.Players.LocalPlayer:GetMouse().Y)).magnitude
					if magnitude < ShortestDistance then
						closestPlayer = v
						ShortestDistance = magnitude
					end
				end
			end
			return closestPlayer
		end
		
		game:GetService "RunService".Stepped:connect(function()
			if configs.main.enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
				box.CFrame = CFrame.new(Plr.Character[configs.main.aimpart].Position +
											(Plr.Character.UpperTorso.Velocity * configs.main.prediction))
			else
				box.CFrame = CFrame.new(0, 9999, 0)
			end
		end)
		
		repeat
			wait()
		until game:IsLoaded()
		local mt = getrawmetatable(game)
		local old = mt.__namecall
		setreadonly(mt, false)
		mt.__namecall = newcclosure(function(...)
			local args = {...}
			if configs.main.enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
				args[3] = Plr.Character[configs.main.aimpart].Position +
							  (Plr.Character[configs.main.aimpart].Velocity * configs.main.prediction)
				return old(unpack(args))
			end
			return old(...)
		end)
	end,
})


local Button = Tab:CreateButton({
	Name = "Lua Lock 100 - 150 T OFF/ON",
	Callback = function()
		local Settings = {
			rewrittenmain = {
				Enabled = true,
				Key = "t",
				DOT = true,
				AIRSHOT = true,
				NOTIF = true,
				AUTOPRED = false,
				FOV = math.huge,
				RESOVLER = true
			}
		}
		
		local SelectedPart = "HumanoidRootPart"
		local Prediction = true
		local PredictionValue = 0.143765
		
		
			local AnchorCount = 0
			local MaxAnchor = 50
		
			local CC = game:GetService"Workspace".CurrentCamera
			local accomidationfactor = 0.11
			local mouse = game.Players.LocalPlayer:GetMouse()
			local placemarker = Instance.new("Part", game.Workspace)
			local enabled = false
			local Plr
		
			function makemarker(Parent, Adornee, Color, Size, Size2)
				local e = Instance.new("BillboardGui", Parent)
				e.Name = "PP"
				e.Adornee = Adornee
				e.Size = UDim2.new(Size, Size2, Size, Size2)
				e.AlwaysOnTop = Settings.rewrittenmain.DOT
				local a = Instance.new("Frame", e)
				if Settings.rewrittenmain.DOT == true then
				a.Size = UDim2.new(1, 0, 1, 0)
				else
				a.Size = UDim2.new(0, 0, 0, 0)
				end
				if Settings.rewrittenmain.DOT == true then
				a.Transparency = 0
				a.BackgroundTransparency = 0
				else
				a.Transparency = 1
				a.BackgroundTransparency = 1
				end
				a.BackgroundColor3 = Color
				local g = Instance.new("UICorner", a)
				if Settings.rewrittenmain.DOT == false then
				g.CornerRadius = UDim.new(0, 0)
				else
				g.CornerRadius = UDim.new(1, 1) 
				end
				return(e)
			end
		
			
			local data = game.Players:GetPlayers()
			function noob(player)
				local character
				repeat wait() until player.Character
				local handler = makemarker(guimain, player.Character:WaitForChild(SelectedPart), Color3.fromRGB(107, 184, 255), 0.3, 3)
				handler.Name = player.Name
				player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild(SelectedPart) end)
		
		
				spawn(function()
					while wait() do
						if player.Character then
						end
					end
				end)
			end
		
			for i = 1, #data do
				if data[i] ~= game.Players.LocalPlayer then
					noob(data[i])
				end
			end
		
			game.Players.PlayerAdded:connect(function(Player)
				noob(Player)
			end)
		
			spawn(function()
				placemarker.Anchored = true
				placemarker.CanCollide = false
				if Settings.rewrittenmain.DOT == true then
				placemarker.Size = Vector3.new(8, 8, 8)
				else
				placemarker.Size = Vector3.new(0, 0, 0)
				end
				placemarker.Transparency = 0.75
				if Settings.rewrittenmain.DOT then
				makemarker(placemarker, placemarker, Color3.fromRGB(232, 186, 200), 0.40, 0)
				end
			end)
		
			game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
				if k == Settings.rewrittenmain.Key and Settings.rewrittenmain.Enabled then
					if enabled == true then
						enabled = false
						if Settings.rewrittenmain.NOTIF == true then
							Plr = getClosestPlayerToCursor()
						game.StarterGui:SetCore("SendNotification", {
							Title = "Lua.Hub";
							Text = "Unlocked :)",
							Duration = 5
						})
					end
					else
						Plr = getClosestPlayerToCursor()
						enabled = true
						if Settings.rewrittenmain.NOTIF == true then
		
							game.StarterGui:SetCore("SendNotification", {
								Title = "";
								Text = "Target: "..tostring(Plr.Character.Humanoid.DisplayName),
								Duration = 5
							})
		
						end
					end
				end
			end)
		
		
		
			function getClosestPlayerToCursor()
				local closestPlayer
				local shortestDistance = Settings.rewrittenmain.FOV
		
				for i, v in pairs(game.Players:GetPlayers()) do
					if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
						local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
						local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
						if magnitude < shortestDistance then
							closestPlayer = v
							shortestDistance = magnitude
						end
					end
				end
				return closestPlayer
			end
		
			local pingvalue = nil;
			local split = nil;
			local ping = nil;
		
			game:GetService"RunService".Stepped:connect(function()
				if enabled and Plr.Character ~= nil and Plr.Character:FindFirstChild("HumanoidRootPart") then
					placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
				else
					placemarker.CFrame = CFrame.new(0, 9999, 0)
				end
				if Settings.rewrittenmain.AUTOPRED == true then
					 pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
					 split = string.split(pingvalue,'(')
					 ping = tonumber(split[1])
					if ping < 130 then
						PredictionValue = 0.151
					elseif ping < 125 then
						PredictionValue = 0.149
					elseif ping < 110 then
						PredictionValue = 0.146
					elseif ping < 105 then
						PredictionValue = 0.138
					elseif ping < 90 then
						PredictionValue = 0.136
					elseif ping < 80 then
						PredictionValue = 0.134
					elseif ping < 70 then
						PredictionValue = 0.131
					elseif ping < 60 then
						PredictionValue = 0.1229
					elseif ping < 50 then
						PredictionValue = 0.1225
					elseif ping < 40 then
						PredictionValue = 0.1256
					end
				end
			end)
		
			local mt = getrawmetatable(game)
			local old = mt.__namecall
			setreadonly(mt, false)
			mt.__namecall = newcclosure(function(...)
				local args = {...}
				if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" and Settings.rewrittenmain.Enabled and Plr.Character ~= nil then
		
					-- args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
					--[[
					if Settings.rewrittenmain.AIRSHOT == true then
						if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
							
							--// Airshot
							args[3] = Plr.Character.LeftFoot.Position+(Plr.Character.LeftFoot.Velocity*PredictionValue)
		
						else
							args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
		
						end
					else
							args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
					end
					]]
					if Prediction == true then
						
					args[3] = Plr.Character[SelectedPart].Position+(Plr.Character[SelectedPart].Velocity*PredictionValue)
		
					else
		
					args[3] = Plr.Character[SelectedPart].Position
		
					end
		
					return old(unpack(args))
				end
				return old(...)
			end)
		
			game:GetService("RunService").RenderStepped:Connect(function()
				if Settings.rewrittenmain.RESOVLER == true and Plr.Character ~= nil and enabled and Settings.rewrittenmain.Enabled then
				if Settings.rewrittenmain.AIRSHOT == true and enabled and Plr.Character ~= nil then
					
					if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
						
						--// Airshot
		
						--// Anchor Check
		
						if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
							AnchorCount = AnchorCount + 1
							if AnchorCount >= MaxAnchor then
								Prediction = false
								wait(2)
								AnchorCount = 0;
							end
						else
							Prediction = true
							AnchorCount = 0;
						end
		
						SelectedPart = "LeftFoot"
		
					else
						--// Anchor Check
		
						if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
							AnchorCount = AnchorCount + 1
							if AnchorCount >= MaxAnchor then
								Prediction = false
								wait(2)
								AnchorCount = 0;
							end
						else
							Prediction = true
							AnchorCount = 0;
						end
		
						SelectedPart = "HumanoidRootPart"
		
					end
					else
		
						--// Anchor Check
		
						if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
							AnchorCount = AnchorCount + 1
							if AnchorCount >= MaxAnchor then
								Prediction = false
								wait(2)
								AnchorCount = 0;
							end
						else
							Prediction = true
							AnchorCount = 0;
						end
		
						SelectedPart = "HumanoidRootPart"
					end
		
				else
						SelectedPart = "HumanoidRootPart"
				end
			end)
		
	end,
})