
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Drift = Instance.new("TextButton")
local Kyrstal = Instance.new("TextButton")
local Memeus = Instance.new("TextButton")
local RTXGraphics = Instance.new("TextButton")
local Smug = Instance.new("TextButton")
local Sonic = Instance.new("TextButton")
local Yeild = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Workspace
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.0527363196, 0, 0.415697664, 0)
Frame.Size = UDim2.new(0, 373, 0, 343)
Frame.Visible = true
Frame.Active = true
Frame.Draggable = true

Drift.Name = "Drift"
Drift.Parent = Frame
Drift.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drift.BorderSizePixel = 3
Drift.Position = UDim2.new(0.529262543, 0, 0.38019526, 0)
Drift.Size = UDim2.new(0, 139, 0, 31)
Drift.Font = Enum.Font.SourceSansBold
Drift.Text = "Car Drift"
Drift.TextColor3 = Color3.fromRGB(0, 0, 0)
Drift.TextSize = 14.000

Kyrstal.Name = "Kyrstal"
Kyrstal.Parent = Frame
Kyrstal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Kyrstal.BorderSizePixel = 3
Kyrstal.Position = UDim2.new(0.0646766126, 0, 0.524310887, 0)
Kyrstal.Size = UDim2.new(0, 139, 0, 31)
Kyrstal.Font = Enum.Font.SourceSansBold
Kyrstal.Text = "Kyrstal Dance"
Kyrstal.TextColor3 = Color3.fromRGB(0, 0, 0)
Kyrstal.TextSize = 14.000
Kyrstal.MouseButton1Down:connect(function()
	function LoadLibrary(a)
		return loadstring(game:HttpGet("https://pastebin.com/raw/UfzKgS6T", true))()
	end

	loadstring(game:GetObjects("rbxassetid://4480871791")[1].Source)()

	-----------//KRYSTAL DANCE V2\\-----------
--[[Movelist
Q = The Swoosher
E = The nutty
R = Spin me right round!
T = Plum juice dance
Y = Moonwalk
U = Slav dance
P = Barrel roll
F = The Jerky
G = The Shuffle
H = The Spongebob
J = Here comes the money!
K = Runnin' in the 90's
---------]]

	--Krystal dance! The old famous script that sadly has been broken(sorta), i've decided to rework this thing because... nostalgia.--
	--This is one of the first scripts i've ever ran on SB, seeing this back again really reminds me of how much of a noob i was.--
	--Credits to Krystalteam, they made the original krystal dance! Be sure to respect them or else...--
	--#makeoldscriptsgreatagain--

	Player=game.Players.LocalPlayer
	Character=workspace.CloneCharacter
	hum = Character.Humanoid
	LeftArm=Character["Left Arm"]
	LeftLeg=Character["Left Leg"]
	RightArm=Character["Right Arm"]
	RightLeg=Character["Right Leg"]
	Root=Character["HumanoidRootPart"]
	Head=Character["Head"]
	Torso=Character["Torso"]
	Neck=Torso["Neck"]
	mouse = Player:GetMouse()
	walking = false
	jumping = false
	attacking = false
	firsttime = false
	tauntdebounce = false
	position = nil
	MseGuide = true
	running = false
	settime = 0
	sine = 0
	t = 0
	ws = 14
	change = 1
	combo1 = true
	dancing = false
	equip = false
	dgs = 75
	combo2 = false
	switch1 = true
	switch2 = false
	firsttime2 = false
	combo3 = false
	gunallowance = false
	shooting = false
	RunSrv = game:GetService("RunService")
	RenderStepped = game:GetService("RunService").RenderStepped
	removeuseless = game:GetService("Debris")

	screenGui = Instance.new("ScreenGui")
	screenGui.Parent = script.Parent

	local HEADLERP = Instance.new("ManualWeld")
	HEADLERP.Parent = Head
	HEADLERP.Part0 = Head
	HEADLERP.Part1 = Head
	HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local TORSOLERP = Instance.new("ManualWeld")
	TORSOLERP.Parent = Root
	TORSOLERP.Part0 = Torso
	TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local ROOTLERP = Instance.new("ManualWeld")
	ROOTLERP.Parent = Root
	ROOTLERP.Part0 = Root
	ROOTLERP.Part1 = Torso
	ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local RIGHTARMLERP = Instance.new("ManualWeld")
	RIGHTARMLERP.Parent = RightArm
	RIGHTARMLERP.Part0 = RightArm
	RIGHTARMLERP.Part1 = Torso
	RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local LEFTARMLERP = Instance.new("ManualWeld")
	LEFTARMLERP.Parent = LeftArm
	LEFTARMLERP.Part0 = LeftArm
	LEFTARMLERP.Part1 = Torso
	LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local RIGHTLEGLERP = Instance.new("ManualWeld")
	RIGHTLEGLERP.Parent = RightLeg
	RIGHTLEGLERP.Part0 = RightLeg
	RIGHTLEGLERP.Part1 = Torso
	RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local LEFTLEGLERP = Instance.new("ManualWeld")
	LEFTLEGLERP.Parent = LeftLeg
	LEFTLEGLERP.Part0 = LeftLeg
	LEFTLEGLERP.Part1 = Torso
	LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local function weldBetween(a, b)
		local weld = Instance.new("ManualWeld", a)
		weld.Part0 = a
		weld.Part1 = b
		weld.C0 = a.CFrame:inverse() * b.CFrame
		return weld
	end

	function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
		A = Instance.new("Attachment", PARENT)
		A.Position = POSITION1
		A.Name = "A"
		B = Instance.new("Attachment", PARENT)
		B.Position = POSITION2
		B.Name = "B"
		tr1 = Instance.new("Trail", PARENT)
		tr1.Attachment0 = A
		tr1.Attachment1 = B
		tr1.Enabled = true
		tr1.Lifetime = LIFETIME
		tr1.TextureMode = "Static"
		tr1.LightInfluence = 0
		tr1.Color = COLOR
		tr1.Transparency = NumberSequence.new(0, 1)
	end

	introsound = Instance.new("Sound",Head)
	introsound.SoundId = "rbxassetid://236146895"
	introsound.Volume = 8
	introsound:Play()


	fedora = Instance.new("Part",Character)
	fedora.Size = Vector3.new(2,2,2)
	fedora.CFrame = Head.CFrame
	fedora.CanCollide = false
	fedoraweld = Instance.new("Weld",fedora)
	fedoraweld.Part0 = fedora
	fedoraweld.Part1 = Head
	fedoraweld.C0 = fedora.CFrame:inverse() * Head.CFrame * CFrame.new(0,-.75,0)
	mfedora = Instance.new("SpecialMesh", fedora)
	mfedora.MeshType = "FileMesh"
	mfedora.Scale = Vector3.new(.97, .97, .97)
	mfedora.MeshId,mfedora.TextureId = 'http://www.roblox.com/asset/?id=13640868','http://www.roblox.com/asset/?id=18987684'

	shades = Instance.new("Part",Character)
	shades.Size = Vector3.new(2,2,2)
	shades.CFrame = Head.CFrame
	shades.CanCollide = false
	shadesweld = Instance.new("Weld",shades)
	shadesweld.Part0 = shades
	shadesweld.Part1 = Head
	shadesweld.C0 = shades.CFrame:inverse() * Head.CFrame * CFrame.new(0,-.2,.15)
	mshades = Instance.new("SpecialMesh", shades)
	mshades.MeshType = "FileMesh"
	mshades.Scale = Vector3.new(1.04, 1.28, 1.04)
	mshades.MeshId,mshades.TextureId = 'http://www.roblox.com/asset/?id=1577360','http://www.roblox.com/asset/?id=1577349'

	for i,v in pairs(Character:GetChildren()) do
		if v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "Hat" or v.ClassName == "CharacterMesh" or v.ClassName == "Shirt Graphic" then
			v:Remove()
		end
	end

	coroutine.wrap(function()
		while wait() do
			Head.face.Texture = "rbxasset://textures/face.png"
			hum.WalkSpeed = ws
			LeftArm.BrickColor = BrickColor.new("Really black")
			RightArm.BrickColor = BrickColor.new("Really black")
			Head.BrickColor = BrickColor.new("White")
			Torso.BrickColor = BrickColor.new("Really black")
			LeftLeg.BrickColor = BrickColor.new("Really black")
			RightLeg.BrickColor = BrickColor.new("Really black")
		end
	end)()
	godmode = coroutine.wrap(function()
		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("BasePart") and v ~= Root then
				v.Anchored = false
			end
		end
		while true do
			hum.MaxHealth = math.huge
			wait(0.0000001)
			hum.Health = math.huge
			wait()
		end
	end)
	godmode()
	ff = Instance.new("ForceField", Character)
	ff.Visible = false

	coroutine.wrap(function()
		for i,v in pairs(Character:GetChildren()) do
			if v.Name == "Animate" then v:Remove()
			end
		end
	end)()

	function damagealll(Radius,Position)		
		local Returning = {}		
		for _,v in pairs(workspace:GetChildren()) do		
			if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
				if v:FindFirstChild("Torso") then		
					local Mag = (v.Torso.Position - Position).magnitude		
					if Mag < Radius then		
						table.insert(Returning,v)		
					end
				elseif v:FindFirstChild("UpperTorso") then	
					local Mag = (v.UpperTorso.Position - Position).magnitude		
					if Mag < Radius then		
						table.insert(Returning,v)		
					end
				end	
			end		
		end		
		return Returning		
	end

	ArtificialHB = Instance.new("BindableEvent", script)
	ArtificialHB.Name = "Heartbeat"
	script:WaitForChild("Heartbeat")

	frame = 1 / 60
	tf = 0
	allowframeloss = false
	tossremainder = false


	lastframe = tick()
	script.Heartbeat:Fire()


	game:GetService("RunService").Heartbeat:connect(function(s, p)
		tf = tf + s
		if tf >= frame then
			if allowframeloss then
				script.Heartbeat:Fire()
				lastframe = tick()
			else
				for i = 1, math.floor(tf / frame) do
					script.Heartbeat:Fire()
				end
				lastframe = tick()
			end
			if tossremainder then
				tf = 0
			else
				tf = tf - frame * math.floor(tf / frame)
			end
		end
	end)

	function swait(num)
		if num == 0 or num == nil then
			game:service("RunService").Stepped:wait(0)
		else
			for i = 0, num do
				game:service("RunService").Stepped:wait(0)
			end
		end
	end

	for _,n in pairs(Character:GetChildren()) do
		if n:IsA("Accessory") then end
	end
	for _,x in pairs(Character:GetChildren()) do
		if x:IsA("Decal") then x:Remove() end
	end

	intro = true
	ws = 0

	bigfedora = Instance.new("Part",Character)
	bigfedora.Size = Vector3.new(2,2,2)
	bigfedora.CFrame = bigfedora.CFrame:inverse() * Root.CFrame * CFrame.new(math.random(-60,60),-.2,math.random(-60,60)) * CFrame.Angles(0,math.rad(math.random(-180,180)),0)
	bigfedora.CanCollide = false
	bigfedora.Anchored = true
	bigfedora.Name = "mbigf"
	mbigfedora = Instance.new("SpecialMesh", bigfedora)
	mbigfedora.MeshType = "FileMesh"
	mbigfedora.Scale = Vector3.new(6, 7, 7)
	mbigfedora.MeshId,mbigfedora.TextureId = 'http://www.roblox.com/asset/?id=13640868','http://www.roblox.com/asset/?id=18987684'
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("Part") and v.Name ~= "mbigf" then v.Transparency = 1
		end
	end
	for i = 1, 60 do
		bigfedora.CFrame = bigfedora.CFrame:lerp(CFrame.new(Root.Position) * CFrame.new(0,-.1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.09)
		swait()
	end
	wait(.25)
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("Part") and v.Name ~= "mbigf" and v.Name ~= "HumanoidRootPart" then v.Transparency = 0
		end
	end
	for i = 1, 50 do
		bigfedora.CFrame = bigfedora.CFrame:lerp(CFrame.new(fedora.Position),.05)
		swait()
	end
	zmc = 0
	for i = 1, 29 do
		zmc = zmc + 2
		mbigfedora.Scale = mbigfedora.Scale - Vector3.new(.25,.25,.25)
		bigfedora.CFrame = bigfedora.CFrame * CFrame.Angles(math.rad(0),math.rad(zmc),0)
		swait()
	end
	bigfedora:Remove()

	ws = 14

	function SOUND(PARENT,ID,VOL,LOOP,REMOVE)
		so = Instance.new("Sound")
		so.Parent = PARENT
		so.SoundId = "rbxassetid://"..ID
		so.Volume = VOL
		so.Looped = LOOP

		so:Play()
		removeuseless:AddItem(so,REMOVE)
	end

	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='k' then
			if dancing then
				dancing = false
			else
				dancing = true
				ws = 0
				change = .5
				attacking = true
				jam = Instance.new("Sound",Torso)
				jam.SoundId = "rbxassetid://665751753"
				jam.Volume = 8
				jam.Looped = true
				jam.TimePosition = 22.3
				jam:Play()
				lol90 = 0
				coroutine.wrap(function()
					while dancing do
						lol90 = lol90 + 11
						ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(1 * math.sin(sine/10),.1 + .8 * math.sin(sine/3),0) * CFrame.Angles(math.rad(0),math.rad(0 * math.sin(sine/8)),math.rad(8 * math.sin(sine/7))),.25)
						ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0 * math.sin(sine/14),0,0) * CFrame.Angles(math.rad(0),math.rad(lol90),0),.25)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,1.45,0) * CFrame.Angles(math.rad(180),math.rad(-5 * math.sin(sine/3)),math.rad(-6 * math.sin(sine/3))),0.25)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,1.45,0) * CFrame.Angles(math.rad(180),math.rad(5 * math.sin(sine/3)),math.rad(6 * math.sin(sine/3))), 0.25)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 , 0) * CFrame.Angles(0, math.rad(0), math.rad(-10 + 5 * math.sin(sine/3))), 0.25)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(0, math.rad(0), math.rad(10 - 5 * math.sin(sine/3))), 0.25)
						swait()
					end
					ws = 14
					jam:Remove()
					ROOTLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
					attacking = false
				end)()
			end
		end
	end)

	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='j' then
			if dancing then
				dancing = false
			else
				dancing = true
				ws = 3
				change = .5
				attacking = true
				g1 = Instance.new("BodyGyro", Root)
				g1.D = 175
				g1.P = 20000
				g1.MaxTorque = Vector3.new(0,9000,0)
				herecomesthemoney = Instance.new("Sound",Torso)
				herecomesthemoney.Pitch = 1
				herecomesthemoney.SoundId = "rbxassetid://2426693638"
				herecomesthemoney.Volume = 8
				herecomesthemoney.Looped = true
				herecomesthemoney:Play()
				robuxpile = Instance.new("Part",Torso)
				robuxpile.Size = Vector3.new(1,1,1)
				robuxpile.CFrame = LeftArm.CFrame
				robuxpile.CanCollide = false
				robuxpileweld = Instance.new("Weld",robuxpile)
				robuxpileweld.Part0 = robuxpile
				robuxpileweld.Part1 = Torso
				robuxpileweld.C0 = robuxpile.CFrame:inverse() * LeftArm.CFrame * CFrame.new(1,-.7,1.4)
				mrobuxpile = Instance.new("SpecialMesh", robuxpile)
				mrobuxpile.MeshType = "FileMesh"
				mrobuxpile.Scale = Vector3.new(0.85, .85, .85)
				mrobuxpile.MeshId,mrobuxpile.TextureId = 'http://www.roblox.com/asset/?id=1285245','http://www.roblox.com/asset/?id=8587344'
				coroutine.wrap(function()
					coroutine.wrap(function()
						while wait(.35) do
							if not dancing then break end
							local robux = Instance.new("Part",Torso)
							robux.CFrame = robuxpile.CFrame * CFrame.Angles(math.rad(0),math.rad(90),math.rad(90))
							robux.Anchored = false
							robux.CanCollide = true
							robux.Size = Vector3.new(1,1,1)
							removeuseless:AddItem(robux,4)
							mrobux = Instance.new("SpecialMesh", robux)
							mrobux.MeshType = "FileMesh"
							mrobux.Scale = Vector3.new(1.25, 1.25, 1.25)
							mrobux.MeshId,mrobux.TextureId = 'http://www.roblox.com/asset/?id=667285348','http://www.roblox.com/asset/?id=665939136'
							bov = Instance.new("BodyVelocity",robux)
							bov.maxForce = Vector3.new(99999,99999,99999)
							robux.CFrame = CFrame.new(robux.Position,mouse.Hit.p)
							bov.velocity = robux.CFrame.lookVector*45
							removeuseless:AddItem(bov,.1)
						end
					end)()
					while dancing do
						g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
						ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,-.3,0) * CFrame.Angles(math.rad(20),math.rad(0 * math.sin(sine/8)),math.rad(0)),.25)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,.5 + .5 * math.sin(sine/2),.5) * CFrame.Angles(math.rad(-97),math.rad(40 - 20 * math.sin(sine/2)),math.rad(0)), 0.25)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1,.5,.5) * CFrame.Angles(math.rad(-87),math.rad(-20),math.rad(0)), 0.25)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 , .5) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-10)), 0.25)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, .5) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.25)
						swait()
					end
					ws = 14
					removeuseless:AddItem(g1,.001)
					robuxpile:Remove()
					attacking = false
				end)()
			end
		end
	end)

	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='h' then
			if dancing then
				dancing = false
			else
				dancing = true
				ws = 0
				change = .5
				attacking = true
				jellyfishjam = Instance.new("Sound",Torso)
				jellyfishjam.SoundId = "rbxassetid://840189092"
				jellyfishjam.Volume = 8
				jellyfishjam.Looped = true
				jellyfishjam.TimePosition = 14.8
				jellyfishjam:Play()
				coroutine.wrap(function()
					while dancing do
						for i = 1, 15 do
							if not dancing then break end
							ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(.5,-.4 + .1 * math.sin(sine/4),0) * CFrame.Angles(math.rad(0),math.rad(20 * math.sin(sine/8)),math.rad(20)),.25)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.3)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .3)
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.25, 2.05,-0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-35)), 0.25)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.31, 2.05,-0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(14)), 0.25)
							swait()
						end
						for i = 1, 15 do
							if not dancing then break end
							ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,-.1 * math.sin(sine/4),0) * CFrame.Angles(math.rad(0),math.rad(20 * math.sin(sine/8)),math.rad(0)),.25)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.3)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .3)
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.25, .7,1.5) * CFrame.Angles(math.rad(72), math.rad(25), math.rad(-2)), 0.25)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(0, math.rad(0), math.rad(10)), 0.25)
							swait()
						end
						for i = 1, 15 do
							if not dancing then break end
							ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(-.5,-.4 + .1 * math.sin(sine/4),0) * CFrame.Angles(math.rad(0),math.rad(20 * math.sin(sine/8)),math.rad(-20)),.25)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.3)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .3)
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 , 0) * CFrame.Angles(0, math.rad(0), math.rad(-10)), 0.25)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(-0.25, 2.05,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(35)), 0.25)
							swait()
						end
						for i = 1, 15 do
							if not dancing then break end
							ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(-.5,-.1,0) * CFrame.Angles(math.rad(0),math.rad(20 * math.sin(sine/8)),math.rad(0)),.25)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.3)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .3)
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.31, 2.05,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-14)), 0.3)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.25, .7,1.5) * CFrame.Angles(math.rad(72), math.rad(-25), math.rad(-2)), 0.25)
							swait()
						end
						swait()
					end
					ws = 14
					attacking = false
				end)()
			end
		end
	end)

	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='g' then
			if dancing then
				dancing = false
			else
				dancing = true
				ws = 0
				change = .5
				attacking = true
				deadmau7 = Instance.new("Sound",Torso)
				deadmau7.SoundId = "rbxassetid://168166611"
				deadmau7.Volume = 8
				deadmau7.Looped = true
				deadmau7:Play()
				coroutine.wrap(function()
					coroutine.wrap(function()
						while dancing do
							ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(2 * math.sin(sine/9),-.4 + .1 * math.sin(sine/3),0) * CFrame.Angles(math.rad(0),math.rad(20 * math.sin(sine/9)),0),.25)
							swait()
						end
					end)()
					while dancing do
						for i = 1, 28 do
							if not dancing then break end
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.2)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1.5,0) * CFrame.Angles(math.rad(180 - 7 * math.sin(sine/3)),math.rad(7 * math.sin(sine/3)),math.rad(7*math.sin(sine/3))), 0.2)
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, .7,1) * CFrame.Angles(math.rad(75 - 10 * math.sin(sine/2)), math.rad(0), math.rad(0)), 0.25)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.31, 2.05,-.1) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-2)), 0.3)
							swait()
						end
						for i = 1, 28 do
							if not dancing then break end
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.2)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1.5,0) * CFrame.Angles(math.rad(180 - 7 * math.sin(sine/3)),math.rad(7 * math.sin(sine/3)),math.rad(7*math.sin(sine/3))), 0.2)
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.31, 2.05,.1) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-8)), 0.25)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, .7,1.1) * CFrame.Angles(math.rad(75 - 10 * math.sin(sine/2)), math.rad(0), math.rad(-2)), 0.25)
							swait()
						end
						swait()
					end
					ws = 14
					deadmau7:Remove()
					attacking = false
				end)()
			end
		end
	end)

	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='f' then
			if dancing then
				dancing = false
			else
				dancing = true
				ws = 6
				change = .5
				attacking = true
				bennyhill = Instance.new("Sound",Torso)
				bennyhill.SoundId = "rbxassetid://138211362"
				bennyhill.Volume = 8
				bennyhill.Looped = true
				bennyhill:Play()
				coroutine.wrap(function()
					while dancing do
						ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,-.4,0) * CFrame.Angles(math.rad(20 + 5 * math.sin(sine/2)),math.rad(10 * math.sin(sine/4)),0),.25)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.89 - .4 * -math.sin(sine/2),.49) * CFrame.Angles(math.rad(-70 + 20 * -math.sin(sine/2)),0,math.rad(0)),.25)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.89 - .4 * math.sin(sine/2),.49) * CFrame.Angles(math.rad(-70  + 20 * math.sin(sine/2)),0,math.rad(0)),.25)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.33, 2, -.2 + .3 * math.sin(sine/2)) * CFrame.Angles(math.rad(-20 - 20 * -math.sin(sine/2)), math.rad(0), math.rad(-8)), 0.25)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.33, 2.0,-.2 - .3 * math.sin(sine/2)) * CFrame.Angles(math.rad(-20 - 20 * math.sin(sine/2)), math.rad(0), math.rad(8)), 0.25)
						swait()
					end
					ws = 14
					bennyhill:Remove()
					attacking = false
				end)()
			end
		end
	end)

	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='p' then
			if dancing then
				dancing = false
			else
				dancing = true
				ws = 0
				change = .5
				attacking = true
				barrelspin = 0
				barrelrollsound = Instance.new("Sound",Torso)
				barrelrollsound.SoundId = "rbxassetid://505320170"
				barrelrollsound.Volume = 8
				barrelrollsound.Looped = true
				barrelrollsound:Play()
				barrol = Instance.new("Part",Torso)
				barrol.Size = Vector3.new(1,1,1)
				barrol.CFrame = Torso.CFrame
				barrol.CanCollide = false
				barrolweld = Instance.new("Weld",barrol)
				barrolweld.Part0 = barrol
				barrolweld.Part1 = Torso
				barrolweld.C0 = barrol.CFrame:inverse() * Torso.CFrame * CFrame.new(0,0,0)
				mbarrol = Instance.new("SpecialMesh", barrol)
				mbarrol.MeshType = "FileMesh"
				mbarrol.Scale = Vector3.new(1.05, .95, 1.05)
				mbarrol.MeshId,mbarrol.TextureId = 'http://www.roblox.com/asset/?id=29873142','http://www.roblox.com/asset/?id=31082268'
				coroutine.wrap(function()
					while dancing do
						ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(5 * math.sin(sine/8),-1.8,0) * CFrame.Angles(math.rad(-90),math.rad(180 * math.sin(sine/8)),0),.25)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,1.5,0) * CFrame.Angles(math.rad(180),0,math.rad(0)),.25)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1.5,0) * CFrame.Angles(math.rad(180),0,math.rad(0)),.25)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(.5,2,0) * CFrame.Angles(0,0,0),.25)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.5,2,0) * CFrame.Angles(0,0,0),.25)
						swait()
					end
					ws = 14
					barrol:Remove()
					attacking = false
				end)()
			end
		end
	end)

	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='q' then
			if dancing then
				dancing = false
			else
				dancing = true
				ws = 0
				change = .5
				spinningmove = 0
				dbwouldlovethis = Instance.new("Sound",Torso)
				dbwouldlovethis.SoundId = "rbxassetid://1532157598"
				dbwouldlovethis.Volume = 8
				dbwouldlovethis.Looped = true
				dbwouldlovethis:Play()
				attacking = true
				coroutine.wrap(function()
					while dancing do
						spinningmove = spinningmove + 10
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.9, -.35) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)),.2)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.9, .35) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)),.2)
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.2 * math.sin(sine/3), -.52, .2 * math.sin(sine/4)) * CFrame.Angles(math.rad(180),math.rad(spinningmove),math.rad(15 * math.sin(sine/9))),.2)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,1.45,0) * CFrame.Angles(math.rad(180),math.rad(-1),math.rad(-3 * math.sin(sine/2))),0.3)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,1.45,0) * CFrame.Angles(math.rad(180),math.rad(1),math.rad(3 * math.sin(sine/2))), 0.3)
						swait()
					end
					ws = 14
					dbwouldlovethis:Remove()
					attacking = false
				end)()
			end
		end
	end)


	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='u' then
			if dancing then
				dancing = false
			else
				dancing = true
				ws = 6
				change = .5
				attacking = true
				slavdance = Instance.new("Sound",Torso)
				slavdance.SoundId = "rbxassetid://2341226836"
				slavdance.Volume = 6
				slavdance.Looped = true
				slavdance:Play()
				coroutine.wrap(function()
					while dancing do
						for i = 1, 17 do
							if not dancing then break end
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.5, -.5) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0)),.2)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.2, .55) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)),.2)
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.8 + .1 * math.sin(sine/3), 0) * CFrame.Angles(math.rad(22 - 2 * math.sin(sine/3)),math.rad(0),math.rad(0)),.2)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87 + .01 * math.sin(sine/9)),math.rad(80 - 3 * math.sin(sine/9)),math.rad(0)), 0.3)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.4) * CFrame.Angles(math.rad(-87 - .01 * math.sin(sine/9)),math.rad(-88 + .7 * math.sin(sine/9)),math.rad(0)), 0.3)
							swait()
						end
						for i = 1, 17 do
							if not dancing then break end
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.2, .55) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)),.2)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.5, -.5) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0)),.2)
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.8 + .1 * math.sin(sine/3), 0) * CFrame.Angles(math.rad(22 - 2 * math.sin(sine/3)),math.rad(0),math.rad(0)),.2)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87 + .01 * math.sin(sine/9)),math.rad(80 - 3 * math.sin(sine/9)),math.rad(0)), 0.3)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.4) * CFrame.Angles(math.rad(-87 - .01 * math.sin(sine/9)),math.rad(-88 + .7 * math.sin(sine/9)),math.rad(0)), 0.3)
							swait()
						end
						swait()
					end
					ws = 14
					slavdance:Remove()
					attacking = false
				end)()
			end
		end
	end)

	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='y' then
			if dancing then
				dancing = false
			else
				dancing = true
				ws = 0
				change = .5
				walkforward = 0
				walkrotation = 0
				attacking = true
				truelegend = Instance.new("Sound",Torso)
				truelegend.SoundId = "rbxassetid://487872908"
				truelegend.TimePosition = 13.98
				truelegend.Volume = 8
				truelegend.Looped = true
				truelegend:Play()
				coroutine.wrap(function()
					while dancing do
						for i = 1, 100 do
							if not dancing then break end
							walkforward = walkforward + .1
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.31, 2.05 , .1 * math.sin(sine/4)) * CFrame.Angles(math.rad(10 * math.sin(sine/4)), math.rad(0), math.rad(-8)), 0.3)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.31, 2.05, -.15 * math.sin(sine/4)) * CFrame.Angles(math.rad(-10 * math.sin(sine/4)), math.rad(0), math.rad(8)), 0.3)
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, walkforward) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(0,0,math.rad(0)),.3)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0,0) * CFrame.Angles(0,0,math.rad(0)),.3)
							swait()
						end
						for i = 1, 50 do
							if not dancing then break end
							walkrotation = walkrotation + 15
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, walkforward) * CFrame.Angles(math.rad(0),math.rad(walkrotation),math.rad(-0)),.2)
							swait()
						end
						walkrotation = 0
						for i = 1, 100 do
							if not dancing then break end
							walkforward = walkforward - .1
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.31, 2 , .1 * math.sin(sine/4)) * CFrame.Angles(math.rad(10 * math.sin(sine/4)), math.rad(0), math.rad(-8)), 0.3)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.31, 2, -.15 * math.sin(sine/4)) * CFrame.Angles(math.rad(-10 * math.sin(sine/4)), math.rad(0), math.rad(8)), 0.3)
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, walkforward) * CFrame.Angles(math.rad(0),math.rad(-180),math.rad(-0)),.2)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,.7,.2) * CFrame.Angles(math.rad(220),math.rad(0),math.rad(-30)), 0.4)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0,0) * CFrame.Angles(0,0,math.rad(0)),.3)
							swait()
						end
						for i = 1, 50 do
							if not dancing then break end
							walkrotation = walkrotation + 15
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(0,0,math.rad(0)),.1)
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, walkforward) * CFrame.Angles(math.rad(0),math.rad(walkrotation),math.rad(-0)),.2)
							swait()
						end
						walkrotation = 0
						swait()
					end
					ws = 14
					truelegend:Remove()
					attacking = false
				end)()
			end
		end
	end)

	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='t' then
			if dancing then
				dancing = false
			else
				dancing = true
				ws = 0
				change = .5
				attacking = true
				plummusic = Instance.new("Sound",Torso)
				plummusic.Volume = 8
				plummusic.Looped = true
				plummusic.SoundId = "rbxassetid://2526093213"
				plummusic:Play()
				coroutine.wrap(function()
					while dancing do
						for i = 1, 20 do
							if not dancing then break end
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.33, 2 , .05) * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-8)), 0.2)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.33, 2.0, -.05) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(8)), 0.2)
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0),math.rad(0*math.sin(sine/4)),math.rad(15)),.2)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.5,1.98,.05) * CFrame.Angles(0,0,math.rad(-140)),.2)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,1.3,.05) * CFrame.Angles(0,0,math.rad(50)),.2)
							swait()
						end
						for i = 1, 20 do
							if not dancing then break end
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.33, 2, .05) * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-8)), 0.2)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.33, 2.0, -.05) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(8)), 0.2)
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0),math.rad(0*math.sin(sine/4)),math.rad(-15)),.2)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1,1.4,.05) * CFrame.Angles(0,0,math.rad(-50)),.2)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-.6,2,.05) * CFrame.Angles(0,0,math.rad(140)),.2)
							swait()
						end
						swait()
					end
					ws = 14
					plummusic:Remove()
					attacking = false
				end)()
			end
		end
	end)

	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='e' then
			if dancing then
				dancing = false
			else
				dancing = true
				ws = 0
				change = .5
				attacking = true
				mrozo = Instance.new("Sound",Torso)
				mrozo.Volume = 8
				mrozo.SoundId = "rbxassetid://335701357"
				mrozo.Looped = true
				mrozo.TimePosition = 10
				mrozo:Play()
				coroutine.wrap(function()
					while dancing do
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 , 0) * CFrame.Angles(0, math.rad(0), math.rad(-10)), 0.1)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(0, math.rad(0), math.rad(10)), 0.1)
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0),math.rad(0*math.sin(sine/4)),math.rad(15*math.sin(sine/4))),.2)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3 + .3 * math.sin(sine/3.5),.5 * -math.sin(sine/3.5),.1) * CFrame.Angles(math.rad(0 * math.sin(sine/2)),0,math.rad(30 * math.sin(sine/3.5))),.2)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3 + .3 * math.sin(sine/3.5),.5 * math.sin(sine/3.5),.1) * CFrame.Angles(math.rad(0 * math.sin(sine/2)),0,math.rad(30 * math.sin(sine/3.5))),.2)
						swait()
					end
					mrozo:Remove()
					ws = 14
					attacking = false
				end)()
			end
		end
	end)

	mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='r' then
			if dancing then
				dancing = false
			else
				ws = 6
				recordbaby = 0
				dancing = true
				change = .5
				attacking = true
				spinme = Instance.new("Sound",Torso)
				spinme.Volume = 8
				spinme.SoundId = "rbxassetid://145799973"
				spinme.Looped = true
				spinme:Play()
				coroutine.wrap(function()
					while dancing do
						recordbaby = recordbaby + 10
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.27, 2 , .1 * math.sin(sine/4)) * CFrame.Angles(math.rad(10 * math.sin(sine/4)), math.rad(0), math.rad(-8)), 0.3)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.27, 2.0, -.1 * math.sin(sine/4)) * CFrame.Angles(math.rad(-10 * math.sin(sine/4)), math.rad(0), math.rad(8)), 0.3)
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.5 * math.sin(sine/5), -.2, .5 * math.sin(sine/4)) * CFrame.Angles(math.rad(0),math.rad(recordbaby),math.rad(0)),.3)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5,1.98,0) * CFrame.Angles(0,0,math.rad(-90)),.3)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.5,1.98,0) * CFrame.Angles(0,0,math.rad(90)),.3)
						swait()
					end
					spinme:Remove()
					ws = 14
					attacking = false
				end)()
			end
		end
	end)

	function ray(pos, dir, rang, ignoredesc)
		return workspace:FindPartOnRay(Ray.new(pos, dir.unit * rang), ignoredesc)
	end

	function ray2(startpos, endpos, distance, ignore)
		local dir = CFrame.new(startpos,endpos).lookVector
		return ray(startpos, dir, distance, ignore)
	end

	checks1 = coroutine.wrap(function() -------Checks
		while true do
			hf = ray(Root.Position,(CFrame.new(Root.Position,Root.Position+Vector3.new(0,-1,0))).lookVector,3*3,Character)
			if Root.Velocity.y > 1 then
				position = "Jump"
			elseif Root.Velocity.y < -1 then
				position = "Falling"
			elseif Root.Velocity.Magnitude < 2 then
				position = "Idle"
			elseif Root.Velocity.Magnitude > 2 then
				position = "Walking"
			elseif Root.Velocity.Magnitude > 20 then
				position = "Running"
			else
			end
			wait()
		end
	end)
	checks1()

	function ray(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
		return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
	end

	function ray2(StartPos, EndPos, Distance, Ignore)
		local DIRECTION = CFrame.new(StartPos,EndPos).lookVector
		return ray(StartPos, DIRECTION, Distance, Ignore)
	end

	OrgnC0 = Neck.C0
	local movelimbs = coroutine.wrap(function()
		while RunSrv.RenderStepped:wait() do
			TrsoLV = Torso.CFrame.lookVector
			Dist = nil
			Diff = nil
			if not MseGuide then
				print("Failed to recognize")
			else
				local _, Point = Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
				Dist = (Head.CFrame.p-Point).magnitude
				Diff = Head.CFrame.Y-Point.Y
				local _, Point2 = Workspace:FindPartOnRay(Ray.new(LeftArm.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
				Dist2 = (LeftArm.CFrame.p-Point).magnitude
				Diff2 = LeftArm.CFrame.Y-Point.Y
				HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
				Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*1), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .1)
			end
		end
	end)
	movelimbs()
	immortal = {}
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
			if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
				v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
			end
			table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
		elseif v:IsA("JointInstance") then
			table.insert(immortal,{v,v.Parent,nil,nil,nil})
		end
	end
	for e = 1, #immortal do
		if immortal[e] ~= nil then
			local STUFF = immortal[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if levitate then
				if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
					PART.Material = MATERIAL
					PART.Color = COLOR
					PART.Transparency = TRANSPARENCY
				end
				PART.AncestryChanged:connect(function()
					PART.Parent = PARENT
				end)
			else
				if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
					PART.Material = MATERIAL
					PART.Color = COLOR
					PART.Transparency = TRANSPARENCY
				end
				PART.AncestryChanged:connect(function()
					PART.Parent = PARENT
				end)
			end
		end
	end
	function immortality()
		for e = 1, #immortal do
			if immortal[e] ~= nil then
				local STUFF = immortal[e]
				local PART = STUFF[1]
				local PARENT = STUFF[2]
				local MATERIAL = STUFF[3]
				local COLOR = STUFF[4]
				local TRANSPARENCY = STUFF[5]
				if PART.ClassName == "Part" and PART == Root then
					PART.Material = MATERIAL
					PART.Color = COLOR
					PART.Transparency = TRANSPARENCY
				end
				if PART.Parent ~= PARENT then
					hum:Remove()
					PART.Parent = PARENT
					hum = Instance.new("Humanoid",Character)
				end
			end
		end
	end
	coroutine.wrap(function()
		while true do
			if hum.Health < .1 then
				deadsound = Instance.new("Sound", Torso)
				deadsound.Volume = 6
				deadsound.SoundId = "rbxassetid://1411352723"
				deadsound:Play()
				immortality()
			end
			wait()
		end
	end)()

	local anims = coroutine.wrap(function()
		while true do
			settime = 0.05
			sine = sine + change
			if position == "Jump" and attacking == false then
				change = 1
				spin = false
				for i,v in pairs(Torso:GetChildren()) do if v:IsA("Sound") then v:Remove() end end
				LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
				RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
				LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(-3),math.rad(-4)), 0.2)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
			elseif position == "Falling" and attacking == false then
				change = 1
				spin = false
				for i,v in pairs(Torso:GetChildren()) do if v:IsA("Sound") then v:Remove() end end
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)
				LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
				RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
				LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(-4), math.rad(0)), 0.2)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(45)), 0.2)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(-45)), 0.2)
			elseif position == "Walking" and attacking == false and running == false then
				change = 1.2
				walking = true
				spin = false
				for i,v in pairs(Torso:GetChildren()) do if v:IsA("Sound") then v:Remove() end end
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5 + Root.RotVelocity.Y / 85,.35,-.5*math.sin(sine/11)) * CFrame.Angles(math.rad(35*math.sin(sine/11)),math.rad(0*math.sin(sine/11)),math.rad(-10 + Root.RotVelocity.Y / 10, math.sin(-20 * math.sin(sine/4)))),.3)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5 + Root.RotVelocity.Y / 85,.45,.5*math.sin(sine/11)) * CFrame.Angles(math.rad(-55*math.sin(sine/11)),math.rad(-5*math.sin(sine/8)),math.rad(10 + Root.RotVelocity.Y / 10, math.sin(20 * math.sin(sine/4)))),.3)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.15 * 0.6*-math.sin(sine/5.5), 0) * CFrame.Angles(math.rad(10), math.rad(12 * -math.sin(sine/11)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.3)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/11)/2.8, -.2  + 0.2 - math.sin(sine/11)/3.4) * CFrame.Angles(math.rad(25 - 25) + -math.sin(sine/11)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0), math.cos(-15 * 25 * math.cos(sine/11))), 0.3)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/11)/2.8, -.2 + 0.2 + math.sin(sine/11)/3.4) * CFrame.Angles(math.rad(25 - 25) - -math.sin(sine/11)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0) , math.cos(-15 * 25 * math.cos(sine/11))), 0.3)
			elseif position == "Idle" and attacking == false and running == false then
				change = .5
				spin = true
				for i,v in pairs(Torso:GetChildren()) do if v:IsA("Sound") then v:Remove() end end
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)),math.rad(0),math.rad(0)),.1)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.27 + .02 * math.sin(sine/12),.20 * -math.sin(sine/12)) * CFrame.Angles(math.rad(20 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.1)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.27 + .02 * math.sin(sine/12),.20 * -math.sin(sine/12)) * CFrame.Angles(math.rad(20 * math.sin(sine/12)),math.rad(0),math.rad(-10)), 0.1)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)), math.rad(0), math.rad(-10)), 0.1)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)), math.rad(0), math.rad(10)), 0.1)
			elseif position == "Running" and attacking == false then
				change = 1
				for i,v in pairs(Torso:GetChildren()) do if v:IsA("Sound") then v:Remove() end end
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(0, .5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.3)
				LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(-1.24+.6*math.sin(sine/4)/1.4, 0.54, 0-0.8*math.sin(sine/4))*CFrame.Angles(math.rad(6+140*math.sin(sine/4)/1.2), math.rad(0), math.rad(20+70*math.sin(sine/4))), 0.3)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(-20 - 0 * math.sin(sine/4)), math.rad(0 + 6 * math.sin(sine/4)), math.rad(0) + Root.RotVelocity.Y / 30, math.sin(10 * math.sin(sine/4))), 0.3)
				RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,-.2 + .5*-math.sin(sine/4)),.3)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.6+0.1*math.sin(sine/4),.7*-math.sin(sine/4)) * CFrame.Angles(math.rad(15+ -50 * math.sin(sine/4)),0,0),.3)
				LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,-.2 + .5*math.sin(sine/4)),.3)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.6-0.1*math.sin(sine/4),.7*math.sin(sine/4)) * CFrame.Angles(math.rad(15 + 50 * math.sin(sine/4)),0,0),.3)
			end
			swait()
		end
	end)
	anims()
end)

Drift.Name = "Drift"
Drift.Parent = ScreenGui
Drift.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drift.BorderSizePixel = 3
Drift.Position = UDim2.new(0.24776119, 0, 0.593023241, 0)
Drift.Size = UDim2.new(0, 139, 0, 31)
Drift.Font = Enum.Font.SourceSansBold
Drift.Text = "Car Drift"
Drift.TextColor3 = Color3.fromRGB(0, 0, 0)
Drift.TextSize = 14.000
Drift.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/MonkoTubeYT/carscript/master/!carscript.lua',true))()
end)

Yeild.Name = "Yeild"
Yeild.Parent = ScreenGui
Yeild.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Yeild.BorderSizePixel = 3
Yeild.Position = UDim2.new(0.157213926, 0, 0.726744115, 0)
Yeild.Size = UDim2.new(0, 139, 0, 31)
Yeild.Font = Enum.Font.SourceSansBold
Yeild.Text = "Infinite Yeild"
Yeild.TextColor3 = Color3.fromRGB(0, 0, 0)
Yeild.TextSize = 14.000
Yeild.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

RTXGraphics.Name = "RTXGraphics"
RTXGraphics.Parent = ScreenGui
RTXGraphics.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RTXGraphics.BorderSizePixel = 3
RTXGraphics.Position = UDim2.new(0.24776119, 0, 0.530523241, 0)
RTXGraphics.Size = UDim2.new(0, 139, 0, 31)
RTXGraphics.Font = Enum.Font.SourceSansBold
RTXGraphics.Text = "RTX Graphics"
RTXGraphics.TextColor3 = Color3.fromRGB(0, 0, 0)
RTXGraphics.TextSize = 14.000
RTXGraphics.MouseButton1Down:connect(function()
	-- This script has been converted to FE by iPxter


	if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
	local Player,Mouse,mouse,UserInputService,ContextActionService = owner
	do
		print("FE Compatibility code by Mokiros | Translated to FE by iPxter")
		script.Parent = Player.Character

		--RemoteEvent for communicating
		local Event = Instance.new("RemoteEvent")
		Event.Name = "UserInput_Event"

		--Fake event to make stuff like Mouse.KeyDown work
		local function fakeEvent()
			local t = {_fakeEvent=true,Connect=function(self,f)self.Function=f end}
			t.connect = t.Connect
			return t
		end

		--Creating fake input objects with fake variables
		local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
		local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
		local CAS = {Actions={},BindAction=function(self,name,fun,touch,...)
			CAS.Actions[name] = fun and {Name=name,Function=fun,Keys={...}} or nil
		end}
		--Merged 2 functions into one by checking amount of arguments
		CAS.UnbindAction = CAS.BindAction

		--This function will trigger the events that have been :Connect()'ed
		local function te(self,ev,...)
			local t = m[ev]
			if t and t._fakeEvent and t.Function then
				t.Function(...)
			end
		end
		m.TrigEvent = te
		UIS.TrigEvent = te

		Event.OnServerEvent:Connect(function(plr,io)
			if plr~=Player then return end
			if io.isMouse then
				m.Target = io.Target
				m.Hit = io.Hit
			else
				local b = io.UserInputState == Enum.UserInputState.Begin
				if io.UserInputType == Enum.UserInputType.MouseButton1 then
					return m:TrigEvent(b and "Button1Down" or "Button1Up")
				end
				for _,t in pairs(CAS.Actions) do
					for _,k in pairs(t.Keys) do
						if k==io.KeyCode then
							t.Function(t.Name,io.UserInputState,io)
						end
					end
				end
				m:TrigEvent(b and "KeyDown" or "KeyUp",io.KeyCode.Name:lower())
				UIS:TrigEvent(b and "InputBegan" or "InputEnded",io,false)
			end
		end)
		Event.Parent = NLS([==[
	local Player = game:GetService("Players").LocalPlayer
	local Event = script:WaitForChild("UserInput_Event")

	local UIS = game:GetService("UserInputService")
	local input = function(io,a)
		if a then return end
		--Since InputObject is a client-side instance, we create and pass table instead
		Event:FireServer({KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState})
	end
	UIS.InputBegan:Connect(input)
	UIS.InputEnded:Connect(input)

	local Mouse = Player:GetMouse()
	local h,t
	--Give the server mouse data 30 times every second, but only if the values changed
	--If player is not moving their mouse, client won't fire events
	while wait(1/30) do
		if h~=Mouse.Hit or t~=Mouse.Target then
			h,t=Mouse.Hit,Mouse.Target
			Event:FireServer({isMouse=true,Target=t,Hit=h})
		end
	end]==],Player.Character)
		Mouse,mouse,UserInputService,ContextActionService = m,m,UIS,CAS
	end
	-----------------------
	--MemeusV2--
	-------------------------------------------------------
	--A script By makhail07

	--This edit by 2003boobear

	--Discord Creterisk#2958 (not 2003boobear's discord)
	-------------------------------------------------------

	local FavIDs = {
		340106355, --Nefl Crystals
		927529620, --Dimension
		876981900, --Fantasy
		398987889, --Ordinary Days
		1117396305, --Oh wait, it's you.
		885996042, --Action Winter Journey
		919231299, --Sprawling Idiot Effigy
		743466274, --Good Day Sunshine
		727411183, --Knife Fight
		1402748531, --The Earth Is Counting On You!
		595230126 --Robot Language
	}



	--The reality of my life isn't real but a Universe -makhail07
	wait()
	local Player = owner
	local Character = Player.Character
	local plr = owner
	local Humanoid = Character.Humanoid
	local char = plr.Character
	local hum = char.Humanoid
	local ra = char["Right Arm"]
	local la= char["Left Arm"]
	local rl= char["Right Leg"]
	local ll = char["Left Leg"]
	local hed = char.Head
	local root = char.HumanoidRootPart
	local rootj = root.RootJoint
	local tors = char.Torso
	local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
	local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
	local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
	local cam = game.Workspace.CurrentCamera
	trazx = Instance.new("ParticleEmitter")
	c = owner.Character

	--where i put all the warn things

	warn ("Well Look at that, I finished it.")
	--Looks Like you decided to look though the script. Well, Hello.
	warn ("I had a fun time making this edit.")
	--I Really DID have fun editing this.
	warn ("I hope you Enjoy this. Go have Fun!")
	--Just don't abuse.
	warn ("Also, the original MemeusV2 was made by makhail07.")
	--Support makhail07 for making the original!
	warn ("This edit was made by me, 2003boobear.")
	--This is one of my best edits BY FAR, though.
	Character.Head.face.Texture = "rbxassetid://620619801"

	-------------------------------------------------------
	--Start Good Stuff--
	-------------------------------------------------------
	CF = CFrame.new
	angles = CFrame.Angles
	attack = false
	timetofly = true
	Euler = CFrame.fromEulerAnglesXYZ
	Rad = math.rad
	IT = Instance.new
	BrickC = BrickColor.new
	Cos = math.cos
	Acos = math.acos
	Sin = math.sin
	Asin = math.asin
	Abs = math.abs
	Mrandom = math.random
	Floor = math.floor
	random = math.random
	radian = math.rad
	Vec3 = Vector3.new
	cFrame = CFrame.new
	Euler = CFrame.fromEulerAnglesXYZ
	-------------------------------------------------------
	--End Good Stuff--
	-------------------------------------------------------
	necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
	RSH, LSH = nil, nil 
	RW = Instance.new("Weld") 
	LW = Instance.new("Weld")
	RH = tors["Right Hip"]
	LH = tors["Left Hip"]
	RSH = tors["Right Shoulder"] 
	LSH = tors["Left Shoulder"] 
	RSH.Parent = nil 
	LSH.Parent = nil 
	RW.Name = "RW"
	RW.Part0 = tors 
	RW.C0 = CF(1.5, 0.5, 0)
	RW.C1 = CF(0, 0.5, 0) 
	RW.Part1 = ra
	RW.Parent = tors 
	LW.Name = "LW"
	LW.Part0 = tors 
	LW.C0 = CF(-1.5, 0.5, 0)
	LW.C1 = CF(0, 0.5, 0) 
	LW.Part1 = la
	LW.Parent = tors
	Effects = {}

	-------------------------------------------------------
	--Start HeartBeat--
	-------------------------------------------------------
	ArtificialHB = Instance.new("BindableEvent", script)
	ArtificialHB.Name = "Heartbeat"
	script:WaitForChild("Heartbeat")

	frame = 1 / 60
	tf = 0
	allowframeloss = false
	tossremainder = false


	lastframe = tick()
	script.Heartbeat:Fire()


	game:GetService("RunService").Heartbeat:connect(function(s, p)
		tf = tf + s
		if tf >= frame then
			if allowframeloss then
				script.Heartbeat:Fire()
				lastframe = tick()
			else
				for i = 1, math.floor(tf / frame) do
					script.Heartbeat:Fire()
				end
				lastframe = tick()
			end
			if tossremainder then
				tf = 0
			else
				tf = tf - frame * math.floor(tf / frame)
			end
		end
	end)
	-------------------------------------------------------
	--End HeartBeat--
	-------------------------------------------------------

	function CameraEnshaking(Length, Intensity) --Took Straight from StarGlitcher!
		coroutine.resume(coroutine.create(function()
			local intensity = 1 * Intensity
			local rotM = 0.01 * Intensity
			for i = 0, Length, 0.1 do
				swait()
				intensity = intensity - 0.05 * Intensity / Length
				rotM = rotM - 5.0E-4 * Intensity / Length
				hum.CameraOffset = Vec3(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity)))
				cam.CFrame = cam.CFrame * cFrame(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity))) * Euler(radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM)
			end
			Humanoid.CameraOffset = Vec3(0, 0, 0)
		end))
	end

	local joyemoji = Instance.new('ParticleEmitter', tors)
	joyemoji.VelocitySpread = 2000
	joyemoji.Lifetime = NumberRange.new(1)
	joyemoji.Speed = NumberRange.new(40)
	joy= {}
	for i=0, 19 do
		joy[#joy+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
	end
	joyemoji.Size = NumberSequence.new(joy)
	joyemoji.Rate = 0
	joyemoji.LockedToPart = false
	joyemoji.LightEmission = 0
	joyemoji.Texture = "rbxassetid://1176402123"
	joyemoji.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)


	local LIT = Instance.new('ParticleEmitter', tors)
	LIT.VelocitySpread = 2000
	LIT.Lifetime = NumberRange.new(1)
	LIT.Speed = NumberRange.new(45)
	nani= {}
	for i=0, 19 do
		nani[#nani+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
	end
	LIT.Size = NumberSequence.new(nani)
	LIT.Rate = 0
	LIT.LockedToPart = false
	LIT.LightEmission = 0
	LIT.Texture = "rbxassetid://1492670151"
	LIT.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)

	local toast = Instance.new('ParticleEmitter', tors)
	toast.VelocitySpread = 2000
	toast.Lifetime = NumberRange.new(1)
	toast.Speed = NumberRange.new(60)
	toasterstoasttoast= {}
	for i=0, 19 do
		toasterstoasttoast[#toasterstoasttoast+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
	end
	toast.Size = NumberSequence.new(toasterstoasttoast)
	toast.Rate = 0
	toast.LockedToPart = false
	toast.LightEmission = 0
	toast.Texture = "rbxassetid://436096230"
	toast.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)

	local ok = Instance.new('ParticleEmitter', tors)
	ok.VelocitySpread = 2000
	ok.Lifetime = NumberRange.new(1)
	ok.Speed = NumberRange.new(50)
	cool= {}
	for i=0, 19 do
		cool[#cool+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
	end
	ok.Size = NumberSequence.new(cool)
	ok.Rate = 0
	ok.LockedToPart = false
	ok.LightEmission = 0
	ok.Texture = "rbxassetid://636768448"
	ok.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)

	-------------------------------------------------------
	--Start Kyu's shitty stuff--
	-------------------------------------------------------

	function ragdoll(model)
		local char = model
		torso = char.HumanoidRootPart
		torso2 = char.Torso
		LW.Parent = nil
		RW.Parent = nil
		LH.Parent = nil
		RH.Parent = nil
		if hum ~= nil then
			hum.PlatformStand = true
		end

		local Head = char:FindFirstChild("Head")
		if Head then
			local Neck = Instance.new("Weld")
			Neck.Name = "Neck"
			Neck.Part0 = torso
			Neck.Part1 = Head
			Neck.C0 = CFrame.new(0, 1.5, 0)
			Neck.C1 = CFrame.new()
			Neck.Parent = torso
		end
		local Limb = char:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = torso.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightShoulder"
			Joint.Part0 = torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = char
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = char:FindFirstChild("Left Arm")
		if Limb then

			Limb.CFrame = torso.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = char
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = char:FindFirstChild("Right Leg")
		if Limb then

			Limb.CFrame = torso.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightHip"
			Joint.Part0 = torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = char
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = char:FindFirstChild("Left Leg")
		if Limb then

			Limb.CFrame = torso.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftHip"
			Joint.Part0 = torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = char
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		--[
		local Bar = Instance.new("Part")
		Bar.TopSurface = 0
		Bar.BottomSurface = 0
		Bar.formFactor = "Symmetric"
		Bar.Size = Vector3.new(1, 1, 1)
		Bar.Transparency = 1
		Bar.CFrame = torso.CFrame * CFrame.new(0, 0.5, 0)
		Bar.Parent = char
		local Weld = Instance.new("Weld")
		Weld.Part0 = torso
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = torso
		--]]

		torso.CFrame = CFrame.new(torso.Position)*CFrame.Angles(math.rad(20),math.rad(torso.Orientation.Y),math.rad(torso.Orientation.Z))

	end

	-------------------------------------------------------
	--End Kyu's shitty stuff--
	-------------------------------------------------------

	-------------------------------------------------------
	--Start Important Functions--
	-------------------------------------------------------
	function swait(num)
		if num == 0 or num == nil then
			game:service("RunService").Stepped:wait(0)
		else
			for i = 0, num do
				game:service("RunService").Stepped:wait(0)
			end
		end
	end
	function thread(f)
		coroutine.resume(coroutine.create(f))
	end
	function clerp(a, b, t)
		local qa = {
			QuaternionFromCFrame(a)
		}
		local qb = {
			QuaternionFromCFrame(b)
		}
		local ax, ay, az = a.x, a.y, a.z
		local bx, by, bz = b.x, b.y, b.z
		local _t = 1 - t
		return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
	end
	function QuaternionFromCFrame(cf)
		local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
		local trace = m00 + m11 + m22
		if trace > 0 then
			local s = math.sqrt(1 + trace)
			local recip = 0.5 / s
			return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
		else
			local i = 0
			if m00 < m11 then
				i = 1
			end
			if m22 > (i == 0 and m00 or m11) then
				i = 2
			end
			if i == 0 then
				local s = math.sqrt(m00 - m11 - m22 + 1)
				local recip = 0.5 / s
				return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
			elseif i == 1 then
				local s = math.sqrt(m11 - m22 - m00 + 1)
				local recip = 0.5 / s
				return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
			elseif i == 2 then
				local s = math.sqrt(m22 - m00 - m11 + 1)
				local recip = 0.5 / s
				return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
			end
		end
	end
	function QuaternionToCFrame(px, py, pz, x, y, z, w)
		local xs, ys, zs = x + x, y + y, z + z
		local wx, wy, wz = w * xs, w * ys, w * zs
		local xx = x * xs
		local xy = x * ys
		local xz = x * zs
		local yy = y * ys
		local yz = y * zs
		local zz = z * zs
		return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
	end
	function QuaternionSlerp(a, b, t)
		local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
		local startInterp, finishInterp
		if cosTheta >= 1.0E-4 then
			if 1 - cosTheta > 1.0E-4 then
				local theta = math.acos(cosTheta)
				local invSinTheta = 1 / Sin(theta)
				startInterp = Sin((1 - t) * theta) * invSinTheta
				finishInterp = Sin(t * theta) * invSinTheta
			else
				startInterp = 1 - t
				finishInterp = t
			end
		elseif 1 + cosTheta > 1.0E-4 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((t - 1) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
		return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
	end
	function rayCast(Position, Direction, Range, Ignore)
		return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
	end
	local RbxUtility = LoadLibrary("RbxUtility")
	local Create = RbxUtility.Create

	-------------------------------------------------------
	--Start Damage Function--
	-------------------------------------------------------
	function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
		if hit.Parent == nil then
			return
		end
		local h = hit.Parent:FindFirstChildOfClass("Humanoid")
		for _, v in pairs(hit.Parent:children()) do
			if v:IsA("Humanoid") then
				h = v
			end
		end
		if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("UpperTorso") ~= nil then
			warn'No R15 allowed'
			hit.Parent:FindFirstChild("Head"):BreakJoints()
		end

		if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
			if hit.Parent:findFirstChild("DebounceHit") ~= nil then
				if hit.Parent.DebounceHit.Value == true then
					return
				end
			end
			if insta == true then
				hit.Parent:FindFirstChild("Head"):BreakJoints()
			end
			local c = Create("ObjectValue"){
				Name = "creator",
				Value = owner,
				Parent = h,
			}
			game:GetService("Debris"):AddItem(c, .5)
			if HitSound ~= nil and HitPitch ~= nil then
				CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
			end
			local Damage = math.random(minim, maxim)
			local blocked = false
			local block = hit.Parent:findFirstChild("Block")
			if block ~= nil then
				if block.className == "IntValue" then
					if block.Value > 0 then
						blocked = true
						block.Value = block.Value - 1
						print(block.Value)
					end
				end
			end
			if blocked == false then
				h.Health = h.Health - Damage
				ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
			else
				h.Health = h.Health - (Damage / 2)
				ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
			end
			if Type == "Knockdown" then
				local hum = hit.Parent.Humanoid
				hum.PlatformStand = true
				coroutine.resume(coroutine.create(function(HHumanoid)
					swait(1)
					HHumanoid.PlatformStand = false
				end), hum)
				local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
				local bodvol = Create("BodyVelocity"){
					velocity = angle * knockback,
					P = 5000,
					maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
					Parent = hit,
				}
				local rl = Create("BodyAngularVelocity"){
					P = 3000,
					maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
					angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
					Parent = hit,
				}
				game:GetService("Debris"):AddItem(bodvol, .5)
				game:GetService("Debris"):AddItem(rl, .5)
			elseif Type == "Normal" then
				local vp = Create("BodyVelocity"){
					P = 500,
					maxForce = Vector3.new(math.huge, 0, math.huge),
					velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
				}
				if knockback > 0 then
					vp.Parent = hit.Parent.Torso
				end
				game:GetService("Debris"):AddItem(vp, .5)
			elseif Type == "Up" then
				local bodyVelocity = Create("BodyVelocity"){
					velocity = Vector3.new(0, 20, 0),
					P = 5000,
					maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
					Parent = hit,
				}
				game:GetService("Debris"):AddItem(bodyVelocity, .5)
			elseif Type == "DarkUp" then
				coroutine.resume(coroutine.create(function()
					for i = 0, 1, 0.1 do
						swait()
						Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
					end
				end))
				local bodyVelocity = Create("BodyVelocity"){
					velocity = Vector3.new(0, 20, 0),
					P = 5000,
					maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
					Parent = hit,
				}
				game:GetService("Debris"):AddItem(bodyVelocity, 1)
			elseif Type == "Snare" then
				local bp = Create("BodyPosition"){
					P = 2000,
					D = 100,
					maxForce = Vector3.new(math.huge, math.huge, math.huge),
					position = hit.Parent.Torso.Position,
					Parent = hit.Parent.Torso,
				}
				game:GetService("Debris"):AddItem(bp, 1)
			elseif Type == "Freeze" then
				local BodPos = Create("BodyPosition"){
					P = 50000,
					D = 1000,
					maxForce = Vector3.new(math.huge, math.huge, math.huge),
					position = hit.Parent.Torso.Position,
					Parent = hit.Parent.Torso,
				}
				local BodGy = Create("BodyGyro") {
					maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
					P = 20e+003,
					Parent = hit.Parent.Torso,
					cframe = hit.Parent.Torso.CFrame,
				}
				hit.Parent.Torso.Anchored = true
				coroutine.resume(coroutine.create(function(Part) 
					swait(1.5)
					Part.Anchored = false
				end), hit.Parent.Torso)
				game:GetService("Debris"):AddItem(BodPos, 3)
				game:GetService("Debris"):AddItem(BodGy, 3)
			end
			local debounce = Create("BoolValue"){
				Name = "DebounceHit",
				Parent = hit.Parent,
				Value = true,
			}
			game:GetService("Debris"):AddItem(debounce, Delay)
			c = Create("ObjectValue"){
				Name = "creator",
				Value = Player,
				Parent = h,
			}
			game:GetService("Debris"):AddItem(c, .5)
		end
	end
	-------------------------------------------------------
	--End Damage Function--
	-------------------------------------------------------

	-------------------------------------------------------
	--Start Damage Function Customization--
	-------------------------------------------------------
	function ShowDamage(Pos, Text, Time, Color)
		local Rate = (1 / 30)
		local Pos = (Pos or Vector3.new(0, 0, 0))
		local Text = (Text or "")
		local Time = (Time or 2)
		local Color = (Color or Color3.new(1, 0, 1))
		local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
		EffectPart.Anchored = true
		local BillboardGui = Create("BillboardGui"){
			Size = UDim2.new(3, 0, 3, 0),
			Adornee = EffectPart,
			Parent = EffectPart,
		}
		local TextLabel = Create("TextLabel"){
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Text = Text,
			Font = "Highway",
			TextColor3 = Color,
			TextScaled = true,
			Parent = BillboardGui,
		}
		game.Debris:AddItem(EffectPart, (Time))
		EffectPart.Parent = game:GetService("Workspace")
		delay(0, function()
			local Frames = (Time / Rate)
			for Frame = 1, Frames do
				wait(Rate)
				local Percent = (Frame / Frames)
				EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
				TextLabel.TextTransparency = Percent
			end
			if EffectPart and EffectPart.Parent then
				EffectPart:Destroy()
			end
		end)
	end
	-------------------------------------------------------
	--End Damage Function Customization--
	-------------------------------------------------------

	function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
		for _, c in pairs(workspace:children()) do
			local hum = c:findFirstChild("Humanoid")
			if hum ~= nil then
				local head = c:findFirstChild("Head")
				if head ~= nil then
					local targ = head.Position - Part.Position
					local mag = targ.magnitude
					if magni >= mag and c.Name ~= plr.Name then
						Damage(head, head, mindam, maxdam, knock, Type, root, 0.1, "http://www.roblox.com/asset/?id=231917784", 1.2)
					end
				end
			end
		end
	end


	CFuncs = {
		Part = {
			Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
				local Part = Create("Part")({
					Parent = Parent,
					Reflectance = Reflectance,
					Transparency = Transparency,
					CanCollide = false,
					Locked = true,
					BrickColor = BrickColor.new(tostring(BColor)),
					Name = Name,
					Size = Size,
					Material = Material
				})
				RemoveOutlines(Part)
				return Part
			end
		},
		Mesh = {
			Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
				local Msh = Create(Mesh)({
					Parent = Part,
					Offset = OffSet,
					Scale = Scale
				})
				if Mesh == "SpecialMesh" then
					Msh.MeshType = MeshType
					Msh.MeshId = MeshId
				end
				return Msh
			end
		},
		Mesh = {
			Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
				local Msh = Create(Mesh)({
					Parent = Part,
					Offset = OffSet,
					Scale = Scale
				})
				if Mesh == "SpecialMesh" then
					Msh.MeshType = MeshType
					Msh.MeshId = MeshId
				end
				return Msh
			end
		},
		Weld = {
			Create = function(Parent, Part0, Part1, C0, C1)
				local Weld = Create("Weld")({
					Parent = Parent,
					Part0 = Part0,
					Part1 = Part1,
					C0 = C0,
					C1 = C1
				})
				return Weld
			end
		},
		Sound = {
			Create = function(id, par, vol, pit)
				coroutine.resume(coroutine.create(function()
					local S = Create("Sound")({
						Volume = vol,
						Pitch = pit or 1,
						SoundId = id,
						Parent = par or workspace
					})
					wait()
					S:play()
					game:GetService("Debris"):AddItem(S, 6)
				end))
			end
		},
		ParticleEmitter = {
			Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
				local fp = Create("ParticleEmitter")({
					Parent = Parent,
					Color = ColorSequence.new(Color1, Color2),
					LightEmission = LightEmission,
					Size = Size,
					Texture = Texture,
					Transparency = Transparency,
					ZOffset = ZOffset,
					Acceleration = Accel,
					Drag = Drag,
					LockedToPart = LockedToPart,
					VelocityInheritance = VelocityInheritance,
					EmissionDirection = EmissionDirection,
					Enabled = Enabled,
					Lifetime = LifeTime,
					Rate = Rate,
					Rotation = Rotation,
					RotSpeed = RotSpeed,
					Speed = Speed,
					VelocitySpread = VelocitySpread
				})
				return fp
			end
		}
	}
	function RemoveOutlines(part)
		part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
	end
	function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
		local Part = Create("Part")({
			formFactor = FormFactor,
			Parent = Parent,
			Reflectance = Reflectance,
			Transparency = Transparency,
			CanCollide = false,
			Locked = true,
			BrickColor = BrickColor.new(tostring(BColor)),
			Name = Name,
			Size = Size,
			Material = Material
		})
		RemoveOutlines(Part)
		return Part
	end
	function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
		local Msh = Create(Mesh)({
			Parent = Part,
			Offset = OffSet,
			Scale = Scale
		})
		if Mesh == "SpecialMesh" then
			Msh.MeshType = MeshType
			Msh.MeshId = MeshId
		end
		return Msh
	end
	function CreateWeld(Parent, Part0, Part1, C0, C1)
		local Weld = Create("Weld")({
			Parent = Parent,
			Part0 = Part0,
			Part1 = Part1,
			C0 = C0,
			C1 = C1
		})
		return Weld
	end


	-------------------------------------------------------
	--Start Effect Function--
	-------------------------------------------------------
	EffectModel = Instance.new("Model", char)
	Effects = {
		Block = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
				local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				if Type == 1 or Type == nil then
					table.insert(Effects, {
						prt,
						"Block1",
						delay,
						x3,
						y3,
						z3,
						msh
					})
				elseif Type == 2 then
					table.insert(Effects, {
						prt,
						"Block2",
						delay,
						x3,
						y3,
						z3,
						msh
					})
				else
					table.insert(Effects, {
						prt,
						"Block3",
						delay,
						x3,
						y3,
						z3,
						msh
					})
				end
			end
		},
		Sphere = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0,0,0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		},
		Cylinder = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		},
		Wave = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3 / 60,
					y3 / 60,
					z3 / 60,
					msh
				})
			end
		},
		Ring = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		},
		Break = {
			Create = function(brickcolor, cframe, x1, y1, z1)
				local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
				prt.Anchored = true
				prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				local num = math.random(10, 50) / 1000
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Shatter",
					num,
					prt.CFrame,
					math.random() - math.random(),
					0,
					math.random(50, 100) / 100
				})
			end
		},
		Spiral = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		},
		Push = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		}
	}
	-------------------------------------------------------
	--End Effect Function--
	-------------------------------------------------------

	function CreateSound(ID, PARENT, VOLUME, PITCH) --Very important.
		local NSound = nil
		coroutine.resume(coroutine.create(function()
			NSound = Instance.new("Sound", PARENT)
			NSound.Volume = VOLUME
			NSound.Pitch = PITCH
			NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
			swait()
			NSound:play()
			game:GetService("Debris"):AddItem(NSound, 10)
		end))
		return NSound
	end





	-------------------------------------------------------
	--End Important Functions--
	-------------------------------------------------------

	chargeup = Instance.new("Sound", hed)
	chargeup.SoundId = "http://www.roblox.com/asset/?id=527276541"
	chargeup.Volume = 10
	chargeup.Pitch = 1
	chargeup.Looped = true
	chargeup.TimePosition = 1

	meme = Instance.new("Sound", hed)
	meme.SoundId = "http://www.roblox.com/asset/?id=291151190"
	meme.Volume = 10
	meme.Pitch = 1
	meme.Looped = true
	meme.TimePosition = 1

	local ohno = Instance.new("Sound")
	ohno.Parent = hed
	ohno.Volume = 10
	ohno.Pitch = 1
	ohno.Looped = true

	local bass = Instance.new("Sound") --why
	bass.Parent = hed
	bass.Volume = 7
	bass.Pitch = 1
	bass.SoundId = "http://www.roblox.com/asset/?id=1087356234"
	bass.Looped = true

	Cause_Im_having_a_good_time_having_a_good_time = Instance.new("Sound", hed) --DONT STOP ME NOOOOOOOOOWWWWWWWW
	Cause_Im_having_a_good_time_having_a_good_time.SoundId = "http://www.roblox.com/asset/?id=672104253"
	Cause_Im_having_a_good_time_having_a_good_time.Volume = 10
	Cause_Im_having_a_good_time_having_a_good_time.Pitch = 1
	Cause_Im_having_a_good_time_having_a_good_time.Looped = false
	Cause_Im_having_a_good_time_having_a_good_time.TimePosition = 35.3

	STHAP = Instance.new("Sound", hed)
	STHAP.SoundId = "http://www.roblox.com/asset/?id=1591656314"
	STHAP.Volume = 10
	STHAP.Pitch = 1
	STHAP.Looped = false

	forevergone = Instance.new("Sound", tors)
	forevergone.SoundId = "http://www.roblox.com/asset/?id=1286436928"
	forevergone.Volume = 10
	forevergone.Pitch = 1
	forevergone.Looped = true
	forevergone.TimePosition = 24

	-------------------------------------------------------
	--Start Music Option--
	-------------------------------------------------------
	local Music = Instance.new("Sound",tors)
	Music.Volume = 2.5
	Music.SoundId = "rbxassetid://"
	Music.Looped = true
	Music.Pitch = 1 --Pitcher
	Music:Play()
	-------------------------------------------------------
	--End Music Option--
	-------------------------------------------------------
	--hi fat >:)
	-------------------------------------------------------
	--Start Attacks N Stuff--
	-------------------------------------------------------
	local sine=0
	function HitboxFunction(Pose, lifetime, siz1, siz2, siz3, Radie, Min, Max, kb, atype)
		local Hitboxpart = Instance.new("Part", EffectModel)
		RemoveOutlines(Hitboxpart)
		Hitboxpart.Size = Vector3.new(siz1, siz2, siz3)
		Hitboxpart.CanCollide = false
		Hitboxpart.Transparency = 1
		Hitboxpart.Anchored = true
		Hitboxpart.CFrame = Pose
		game:GetService("Debris"):AddItem(Hitboxpart, lifetime)
		MagniDamage(Hitboxpart, Radie, Min, Max, kb, atype)
	end
	function GEtOuT()
		attack = true
		hum.WalkSpeed = 10
		Character.Head.face.Texture = "rbxassetid://494811799"
		CreateSound("814652778", hed, 10, 1)
		CreateSound("537371462", hed, 10, 1)
		local vel3 = Instance.new("BodyVelocity",tors)
		vel3.Velocity = Vector3.new(0,25,0)
		vel3.MaxForce = Vector3.new(10000000,10000000,10000000)
		for i = 0,12,0.1 do
			swait()
			CameraEnshaking(1, 2)
			HitboxFunction(ll.CFrame, 0.01, 1, 1, 1, 7, 20, 99, 53, "Knockdown")
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.3)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-40), Rad(0), Rad(0)), 0.3)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(Rad(30), Rad(0), Rad(20)), 0.3)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(Rad(-20), Rad(0), Rad(-30)), 0.3)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -0.3) * LHCF * angles(Rad(-5), Rad(0), Rad(20)), 0.15)
			RH.C0 = clerp(RH.C0, CF(1, -1, 0.3) * angles(Rad(0), Rad(90), Rad(-20)), 0.3)
		end
		vel3:Destroy()
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
		Humanoid.JumpPower = 50
		hum.WalkSpeed = 16
	end

	function GEtOuT2()
		attack = true
		hum.WalkSpeed = 10
		Humanoid.JumpPower = 0
		Character.Head.face.Texture = "rbxassetid://494811799"
		CreateSound("814652778", hed, 10, 1)
		CreateSound("537371462", hed, 10, 1)
		root.Velocity = root.CFrame.lookVector * 20
		for i = 0,12,0.1 do
			swait()
			CameraEnshaking(1, 2)
			root.Velocity = root.CFrame.lookVector * 50
			HitboxFunction(ll.CFrame, 0.01, 1, 1, 1, 7, 10, 50, 53, "Knockdown")
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(0-255.45*i)), 0.3)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-40), Rad(0), Rad(0)), 0.3)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(Rad(30), Rad(0), Rad(20)), 0.3)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(Rad(-20), Rad(0), Rad(-30)), 0.3)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -0.3) * LHCF * angles(Rad(-5), Rad(0), Rad(20)), 0.15)
			RH.C0 = clerp(RH.C0, CF(1, -1, 0.3) * angles(Rad(0), Rad(90), Rad(-20)), 0.3)
		end
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
		Humanoid.JumpPower = 50
		hum.WalkSpeed = 16
	end
	function Flight() --wowthatsdiffrent
		attack = true
		Character.Head.face.Texture = "rbxassetid://269748407"
		local ColorsArray ={ColorSequenceKeypoint.new(0, Color3.new(1,0,0)),
			ColorSequenceKeypoint.new(0.16, Color3.new(1,1,1)),
			ColorSequenceKeypoint.new(0.32, Color3.new(0,0,1)),
			ColorSequenceKeypoint.new(0.48, Color3.new(1,1,1)),
			ColorSequenceKeypoint.new(0.64, Color3.new(1,0,0)),
			ColorSequenceKeypoint.new(0.80, Color3.new(1,1,1)),
			ColorSequenceKeypoint.new(0.96, Color3.new(0,0,1)),
			ColorSequenceKeypoint.new(1, Color3.new(1,1,1))}
		local vel4 = Instance.new("BodyVelocity",ll)
		vel4.Velocity = Vector3.new(0,4,0)
		vel4.MaxForce = Vector3.new(10000000,10000000,10000000)
		local Atch3 = Instance.new("Attachment",ll)Atch3.Position = Vector3.new(0,0.6,0)
		local Atch4 = Instance.new("Attachment",ll)Atch4.Position = Vector3.new(0,-0.6,0)
		local Trail2 = Instance.new("Trail",ll)Trail2.Attachment0 = Atch3 Trail2.Attachment1 = Atch4
		Trail2.Texture = "rbxassetid://22636887" Trail2.Lifetime = 0.2 Trail2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
		Trail2.Color = ColorSequence.new(ColorsArray) Trail2.LightEmission = 1 
		Trail2.Enabled = true
		local Atch5 = Instance.new("Attachment",rl)Atch5.Position = Vector3.new(0,0.6,0)
		local Atch6 = Instance.new("Attachment",rl)Atch6.Position = Vector3.new(0,-0.6,0)
		local Trail3 = Instance.new("Trail",rl)Trail3.Attachment0 = Atch5 Trail3.Attachment1 = Atch6
		Trail3.Texture = "rbxassetid://22636887" Trail3.Lifetime = 0.2 Trail3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
		Trail3.Color = ColorSequence.new(ColorsArray) Trail3.LightEmission = 1 
		Trail3.Enabled = true
		local Atch7 = Instance.new("Attachment",ra)Atch7.Position = Vector3.new(0,0.6,0)
		local Atch8 = Instance.new("Attachment",ra)Atch8.Position = Vector3.new(0,-0.6,0)
		local Trail4 = Instance.new("Trail",ra)Trail4.Attachment0 = Atch7 Trail4.Attachment1 = Atch8
		Trail4.Texture = "rbxassetid://22636887" Trail4.Lifetime = 0.2 Trail4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
		Trail4.Color = ColorSequence.new(ColorsArray) Trail4.LightEmission = 1 
		Trail4.Enabled = true
		local Atch9 = Instance.new("Attachment",la)Atch9.Position = Vector3.new(0,0.6,0)
		local Atch10 = Instance.new("Attachment",la)Atch10.Position = Vector3.new(0,-0.6,0)
		local Trail5 = Instance.new("Trail",la)Trail5.Attachment0 = Atch9 Trail5.Attachment1 = Atch10
		Trail5.Texture = "rbxassetid://22636887" Trail5.Lifetime = 0.2 Trail5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
		Trail5.Color = ColorSequence.new(ColorsArray) Trail5.LightEmission = 1 
		Trail5.Enabled = true
		local Atch1 = Instance.new("Attachment",Torso)Atch1.Position = Vector3.new(0,2,0)
		local Atch2 = Instance.new("Attachment",Torso)Atch2.Position = Vector3.new(0,-2.5,0)
		local Trail = Instance.new("Trail",Torso)Trail.Attachment0 = Atch1 Trail.Attachment1 = Atch2
		Trail.Texture = "rbxassetid://22636887" Trail.Lifetime = 0.2 Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
		Trail.Color = ColorSequence.new(ColorsArray) Trail.LightEmission = 1 
		Trail.Enabled = false
		ragdoll(char)
		wait(1)
		Character.Head.face.Texture = "rbxassetid://249062487"
		CreateSound("948494432", hed, 10, 1)
		wait(2)
		Character.Head.face.Texture = "rbxassetid://269748407"
		CreateSound("633394595", hed, 10, 1)
		wait(2)
		Character.Head.face.Texture = "rbxassetid://494811799"
		STHAP:play()
		wait(11)
		forevergone:play()
	end

	function OBJECTION()
		attack = true
		hum.WalkSpeed = 10
		Character.Head.face.Texture = "rbxassetid://55831869"
		CreateSound("330859085", hed, 10, 1)
		for i = 0,8,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function Hello()
		attack = true
		hum.WalkSpeed = 10
		Character.Head.face.Texture = "rbxassetid://334668738"
		CreateSound("855338765", hed, 10, 0.9)
		for i = 0,3,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(20), Rad(-5)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function Victory()
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://616284160"
		Humanoid.Jump = true
		CreateSound("130834939", hed, 10, 1)
		for i = 0,3.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(20), Rad(-5)), 0.1)
		end
		Humanoid.Jump = true
		for i = 0,3.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(40)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(40)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-180), Rad(-25), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-0)), 0.1)
		end
		Humanoid.Jump = true
		for i = 0,3.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(20), Rad(-5)), 0.1)
		end
		Humanoid.Jump = true
		for i = 0,3.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(40)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(40)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-180), Rad(-25), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-0)), 0.1)
		end
		Humanoid.Jump = true
		for i = 0,3.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(20), Rad(-5)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function ShutTheHellUp()
		attack = true
		hum.WalkSpeed = 2.01
		Character.Head.face.Texture = "rbxassetid://963148419"
		CreateSound("336377340", hed, 10, 1)
		for i = 0,3,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,1.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,1.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-5), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,1.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,1.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-5), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(120), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		hum.WalkSpeed = 16
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
	end

	function SpinMeDad() --YOU SPIN ME RIGHT ROUND BABY RIGHT ROUND
		attack = true
		hum.WalkSpeed = 5
		Humanoid.JumpPower = 175
		Character.Head.face.Texture = "rbxassetid://1223903433"
		CreateSound("145799973", hed, 10, 1)
		local vel2 = Instance.new("BodyVelocity",tors)
		vel2.Velocity = Vector3.new(0,1.2,0)
		vel2.MaxForce = Vector3.new(10000000,10000000,10000000)
		for i = 0,60,0.1 do
			HitboxFunction(ll.CFrame, 0.01, 1, 1, 1, 7, 5, 20, 53, "Knockdown")
			swait()
			CameraEnshaking(1, 1)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-90)), 0.1)
		end
		hum.WalkSpeed = 16
		vel2:Destroy()
		Character.Head.face.Texture = "rbxassetid://620619801"
		Humanoid.JumpPower = 50
		attack = false
	end

	function EndMySufferingV2() --why
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://202210455"
		local A = math.random(1,5)
		if A == 1 then
			meme.SoundId = "rbxassetid://295810519"
		end
		if A == 2 then
			meme.SoundId = "rbxassetid://1124778077"
		end
		if A == 3 then
			meme.SoundId = "rbxassetid://464157070"
		end
		if A == 4 then
			meme.SoundId = "rbxassetid://146334595"
		end
		if A == 5 then
			meme.SoundId = "rbxassetid://145536915"
		end
		meme:Play()
		bass:Play()
		joyemoji.Rate = 70
		LIT.Rate = 70
		ok.Rate = 70
		toast.Rate = 70

		for i = 0,50,0.1 do
			swait()
			CameraEnshaking(1, 10)
			bass.Parent = hed
			meme.Parent = hed
			rootj.C0=clerp(rootj.C0,RootCF*CF(0,0,-0.1+0.1*math.cos(sine/20))*angles(math.rad(15),math.rad(-10),math.rad(0)),0.15)
			tors.Neck.C0=clerp(tors.Neck.C0,necko*angles(math.rad(35),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,CF(1,-.9-0.1*math.cos(sine/20),.025*math.cos(sine/20))*RHCF*angles(math.rad(-5),math.rad(0),math.rad(0)),0.15)
			LH.C0=clerp(LH.C0,CF(-1,-.9-0.1*math.cos(sine/20),.025*math.cos(sine/20))*LHCF*angles(math.rad(-5),math.rad(-0),math.rad(-20)),0.15)
			RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5+0.1*math.sin(sine/30), -0.6) * angles(math.rad(-0), math.rad(10), math.rad(-110)), 0.1)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5+0.1*math.sin(sine/30), 0.055*math.cos(sine/20)) * angles(math.rad(-0), math.rad(-10), math.rad(-105)), 0.1)
		end
		bass:Stop()
		meme:Stop()
		joyemoji.Rate = 0
		LIT.Rate = 0
		ok.Rate = 0
		toast.Rate = 0
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
		hum.WalkSpeed = 16
	end

	function HELP()
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://307972876"
		CreateSound("1123321019", hed, 10, 1)
		for i = 0,15,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		CreateSound("198462271", hed, 10, 1)
		for i = 0,8,0.1 do
			Character.Head.face.Texture = "rbxassetid://341497730"
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		for i = 0,8,0.1 do
			Character.Head.face.Texture = "rbxassetid://341497730"
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(60), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		CreateSound("948494432", hed, 10, 1)
		for i = 0,7.5,0.1 do
			Character.Head.face.Texture = "rbxassetid://249062487"
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(60), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		CreateSound("1542642349", hed, 10, 1)
		for i = 0,10,0.1 do
			Character.Head.face.Texture = "rbxassetid://270636807"
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		CreateSound("269597232", hed, 10, 1)
		for i = 0,6,0.1 do
			Character.Head.face.Texture = "rbxassetid://265057155"
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function Choose()
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://374187112"
		CreateSound("130784263", hed, 10, 1)
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(110), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(110), Rad(0), Rad(0)), 0.1)
		end
		for i = 0,5,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(35), Rad(0), Rad(-10)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(35), Rad(0), Rad(10)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function slap()
		attack = true
		hum.WalkSpeed = 10
		CreateSound("146163534", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://293603561"
		owner.Character.Humanoid:TakeDamage(7)
		CameraEnshaking(1, 2)
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(115 + 4), Rad(45), Rad(50)), 0.1)
		end
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
		hum.WalkSpeed = 16
	end

	function MYSPAGHETTTTTTT() --ow
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("1282149571", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://1329282756"
		owner.Character.Humanoid:TakeDamage(10)
		CameraEnshaking(1, 2.2)
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(115 + 4), Rad(45), Rad(50)), 0.1)
		end
		for i = 0,5,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(110), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(110), Rad(0), Rad(0)), 0.1)
		end
		for i = 0,6,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(35), Rad(0), Rad(-10)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(35), Rad(0), Rad(10)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end


	function dead()
		attack = true
		hum.WalkSpeed = 0.20
		CreateSound("137225991", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://297512410"
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(90), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(180), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(270), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(90), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(180), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(270), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		Character.Head.face.Texture = "rbxassetid://273309187"
		for i = 0,9,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -2.59 + 0.1) * angles(Rad(-90), Rad(90), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(30)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-30)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function hap() --much hap
		attack = true
		hum.WalkSpeed = 0.10
		CreateSound("363808674", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://315792941"
		for i = 0,12,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(180)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-0)), 0.1)
		end
		CreateSound("233168827", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://335761015"
		for i = 0,10,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(180)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-0)), 0.1)
		end
		CreateSound("363808674", hed, 10, 1)
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function HAAAAA() --KONO POWA
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://305068389"
		chargeup.Pitch = 1
		for i = 0,7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(-0)), 0.1)
		end
		Character.Head.face.Texture = "rbxassetid://313921371"
		chargeup:play()
		for i = 0,30,0.1 do
			swait()
			CameraEnshaking(1, 2)
			chargeup.Parent = hed
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(15), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(-0)), 0.1)
		end
		chargeup:stop()
		chargeup.Pitch = 1.1
		chargeup.TimePosition = 1
		chargeup:play()
		Character.Head.face.Texture = "rbxassetid://304942859"
		for i, v in pairs(c:children()) do
			if v.ClassName == "Part" then
				local tra = trazx:clone()
				tra.Parent = v
				tra.LightEmission = 1
				tra.Color = ColorSequence.new(Color3.new(0, 0.6666666666666666, 1))
				tra.Rate = 15
				tra.Rotation = NumberRange.new(-5, 5)
				tra.Lifetime = NumberRange.new(1.5, 2)
				tra.Size = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0.1, 0),
					NumberSequenceKeypoint.new(1, 0, 0)
				})
				tra.Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1, 0),
					NumberSequenceKeypoint.new(0.135, 0, 0),
					NumberSequenceKeypoint.new(0.875, 0, 0),
					NumberSequenceKeypoint.new(1, 1, 0)
				})
				tra.Speed = NumberRange.new(0.5)
				tra.VelocitySpread = 360
				tra.VelocityInheritance = 0.5
				tra.ZOffset = 2
				tra.Acceleration = Vector3.new(0, 2.5, 0)
			end
		end
		local tra = trazx:clone()
		tra.Parent = c.HumanoidRootPart
		tra.Texture = "rbxassetid://347730682"
		tra.LightEmission = 0.8
		tra.Color = ColorSequence.new(Color3.new(0, 0.6666666666666666, 1))
		tra.Rate = 250
		tra.Rotation = NumberRange.new(-5, 5)
		tra.Lifetime = NumberRange.new(0.75)
		tra.Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 4.81, 0.875),
			NumberSequenceKeypoint.new(1, 2.13, 0.875)
		})
		tra.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1, 0),
			NumberSequenceKeypoint.new(0.0399, 0.85, 0),
			NumberSequenceKeypoint.new(0.394, 0.9, 0),
			NumberSequenceKeypoint.new(0.699, 1, 0),
			NumberSequenceKeypoint.new(1, 1, 0)
		})
		tra.Speed = NumberRange.new(15)
		tra.VelocitySpread = 360
		tra.VelocityInheritance = 0.5
		tra.ZOffset = 3.5
		tra.Acceleration = Vector3.new(0, 25, 0)
		for i = 0,35,0.1 do
			swait()
			ohno.Parent = hed
			CameraEnshaking(1, 3)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(60), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(-0)), 0.1)
		end
		chargeup:stop()
		chargeup.Pitch = 1.3
		chargeup.TimePosition = 1
		chargeup:play()
		tra:Destroy()
		tra:Destroy()
		Character.Head.face.Texture = "rbxassetid://280233855"
		local tra = trazx:clone()
		tra.Parent = c.HumanoidRootPart
		tra.Texture = "rbxassetid://347730682"
		tra.LightEmission = 0.8
		tra.Color = ColorSequence.new(Color3.new(1, 0, 0))
		tra.Rate = 250
		tra.Rotation = NumberRange.new(-5, 5)
		tra.Lifetime = NumberRange.new(0.3)
		tra.Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 8, 0.875),
			NumberSequenceKeypoint.new(1, 10, 0.875)
		})
		tra.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1, 0),
			NumberSequenceKeypoint.new(0.0399, 0.531, 0),
			NumberSequenceKeypoint.new(0.394, 0.906, 0),
			NumberSequenceKeypoint.new(0.699, 1, 0),
			NumberSequenceKeypoint.new(1, 1, 0)
		})
		for i = 0,32,0.1 do
			swait()
			CameraEnshaking(1, 5)
			chargeup.Parent = hed
			owner.Character.Humanoid:TakeDamage(0.12)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-65), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(-0)), 0.1)
		end
		chargeup:stop()
		CreateSound("681582832", hed, 10, 1)
		owner.Character:BreakJoints()
		local S = Instance.new("Explosion",workspace)    
		S.Position = tors.Position
		S.BlastPressure = 9
		S.BlastRadius = 30
		S.ExplosionType = 0
		attack = false
		hum.WalkSpeed = 16
		Character.Head.face.Texture = "rbxassetid://295197013"
		tra:Destroy()
		CameraEnshaking(4, 30)
		error("WARNING, TO MUCH ENERGY.")
	end

	function NEN()
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("230292011", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://705269463"
		for i = 0,4,0.1 do
			swait()
			CameraEnshaking(1, 3)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-90), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function FLYSKYHIGH()
		attack = true
		timetofly = false
		hum.WalkSpeed = 0.05
		Character.Head.face.Texture = "rbxassetid://705269463"
		Cause_Im_having_a_good_time_having_a_good_time:Play()
		Cause_Im_having_a_good_time_having_a_good_time.TimePosition = 35.3
		Humanoid.JumpPower = 0
		for i = 0,300,0.1 do --thatsalongtime
			swait()
			CameraEnshaking(1, 7)
			HitboxFunction(ll.CFrame, 0.01, 1, 1, 1, 7, 75, 500, 100, "Knockdown")
			Cause_Im_having_a_good_time_having_a_good_time.Parent = hed
			root.Velocity = root.CFrame.lookVector * 225
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0-255.45*i), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0-255.45*i)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0-255.45*i)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-75), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-75), Rad(0), Rad(0)), 0.1)
		end
		Cause_Im_having_a_good_time_having_a_good_time:Stop()
		attack = false
		Humanoid.JumpPower = 50
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
		wait(45)
		timetofly = true
		warn("You can FLY SKY HIGH Now! Go Nuts!") --please dont go nuts
	end


	function highnoon()
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("495316660", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://155195214"
		CameraEnshaking(2, 4)
		local Blobby = Instance.new("Part", char)
		Blobby.Name = "Blob"
		Blobby.CanCollide = false
		Blobby.BrickColor = BrickColor.new("Really black")
		Blobby.Transparency = 0
		Blobby.Material = "Plastic"
		Blobby.Size = Vector3.new(1, 1, 2)
		Blobby.TopSurface = Enum.SurfaceType.Smooth
		Blobby.BottomSurface = Enum.SurfaceType.Smooth

		local Weld = Instance.new("Weld", Blobby)
		Weld.Part0 = ra
		Weld.Part1 = Blobby
		Weld.C1 = CFrame.new(0, -.4, -1.6) *angles(Rad(180), Rad(0), Rad(180))
		Weld.C0 = CFrame.Angles(math.rad(-90),0,0)

		local M2 = Instance.new("SpecialMesh")
		M2.Parent = Blobby
		M2.MeshId = "http://www.roblox.com/asset/?id=432256490"
		M2.TextureId = "http://www.roblox.com/asset/?id=432256526"
		M2.Scale = Vector3.new(.002, .002, .002)
		for i = 0,7.75,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30), Rad(0), Rad(0)), 0.2)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.2)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.2)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-.6), Rad(180)), 0.2)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-45), Rad(-.6), Rad(136 - 4.5 * Sin(sine / 20))), 0.2)
		end
		for i = 0,16.5,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30), Rad(0), Rad(0)), 0.2)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.2)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.2)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-.6), Rad(90)), 0.2)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-45), Rad(-.6), Rad(136 - 4.5 * Sin(sine / 20))), 0.2)
		end
		Blobby.Transparency = 1
		Blobby:Destroy()
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function somuchcancerwhy() --o no
		attack = true
		hum.WalkSpeed = 0.10
		Character.Head.face.Texture = "rbxassetid://315074049"
		local A = math.random(1,13)
		if A == 1 then
			ohno.SoundId = "rbxassetid://295810519"
			ohno.TimePosition = 1
		end
		if A == 2 then
			ohno.SoundId = "rbxassetid://488472970"
			ohno.TimePosition = 2
		end
		if A == 3 then
			ohno.SoundId = "rbxassetid://917045199"
			ohno.TimePosition = 3
		end
		if A == 4 then
			ohno.SoundId = "rbxassetid://324205173"
			ohno.TimePosition = 1
		end
		if A == 5 then
			ohno.SoundId = "rbxassetid://376134741"
			ohno.TimePosition = 8
		end
		if A == 6 then
			ohno.SoundId = "rbxassetid://164147183"
			ohno.TimePosition = 0
		end
		if A == 7 then
			ohno.SoundId = "rbxassetid://825526716"
			ohno.TimePosition = 1
		end
		if A == 8 then
			ohno.SoundId = "rbxassetid://185460366"
			ohno.TimePosition = 0
		end
		if A == 9 then
			ohno.SoundId = "rbxassetid://273319633"
			ohno.TimePosition = 1
		end
		if A == 10 then
			ohno.SoundId = "rbxassetid://506212392"
			ohno.TimePosition = 2
		end
		if A == 11 then
			ohno.SoundId = "rbxassetid://708297448"
			ohno.TimePosition = 4
		end
		if A == 12 then
			ohno.SoundId = "rbxassetid://497199103"
			ohno.TimePosition = 9
		end
		if A == 13 then
			ohno.SoundId = "rbxassetid://152833989"
			ohno.TimePosition = 1
		end
		ohno:Play()
		for i = 0,100,0.1 do
			swait()
			CameraEnshaking(2, 3)
			ohno.Parent = hed
			char.Torso.Neck.C0 = char.Torso.Neck.C0 * CFrame.Angles(math.random(-10,10),math.random(-10,10),math.random(-10,10))
		end
		attack = false
		ohno:Stop()
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function WRY() --WRYYYYYYY
		attack = true
		hum.WalkSpeed = 0.30
		CreateSound("794081034", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://396389196"
		for i = 0,2,0.1 do
			swait()
			CameraEnshaking(1, 2)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(140), Rad(60)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-140), Rad(-60)), 0.1)
		end
		for i = 0,14.7,0.1 do
			swait()
			CameraEnshaking(1, 3)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 1, -1 + 0.1) * angles(Rad(-75), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(65), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-70)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(70)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(40)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(-0), Rad(-40)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function BOI()
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("390901873", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://282463320"
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(50), Rad(90)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-50), Rad(-90)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(140), Rad(60)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-140), Rad(-60)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function WhatHuh()
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("130766865", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://276732672"
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		for i = 0,6.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(-26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		for i = 0,8.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		for i = 0,1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(40), Rad(-26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		for i = 0,1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(40), Rad(26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(-26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function NothingPersonal()
		if mouse.Target.Parent ~= char and mouse.Target.Parent.Parent ~= char and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
			local HITBODY = mouse.Target.Parent
			local TORS = HITBODY:FindFirstChild("Torso") or HITBODY:FindFirstChild("UpperTorso")
			local HEAD = HITBODY:FindFirstChild("Head")
			local HUMAN = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
			if TORS ~= nil and HUMAN ~= nil then
				attack = true
				root.CFrame = TORS.CFrame * CFrame.new(-1,0,3)
				TORS.Anchored = true
				hum.WalkSpeed = 0
				Character.Head.face.Texture = "rbxassetid://40770311"
				CreateSound("1255922819", hed, 10, 1)
				CameraEnshaking(2, 4)
			end
			wait(3.5)
			for i = 0,9,0.1 do
				swait()
				for i = 1,2 do
					HitboxFunction(ll.CFrame, 0.01, 1, 1, 1, 7, 1, 10, 53, "Knockdown")
					CameraEnshaking(1, 7)
					Effects.Sphere.Create(BrickColor.new("Persimmon"), TORS.CFrame*CFrame.new(math.random(-200,200)/100,math.random(-300,200)/100,math.random(-100,100)/100), 1, 1, 1, 15, 15, 15, 0.2)
				end
			end
			wait(.5)
			TORS.Anchored = false
			attack = false
			Character.Head.face.Texture = "rbxassetid://620619801"
			hum.WalkSpeed = 16
		end
	end

	function VeryMuchWorrying()
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://111523405"
		CreateSound("1395854043", hed, 10, 1)
		for i = 0,14,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-145)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(145)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function Ashes() --Straight from... Whatever it was called.
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://360687027"
		CreateSound("290084602", tors, 10, 1)
		for i = 0,6.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-30), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(145)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(-145)), 0.1)
		end
		for i = 0,6.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(20)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-20)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-30), Rad(0), Rad(15)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-30), Rad(0), Rad(-15)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function AnotherOne() --WhAT ANOTHER ONE
		attack = true
		hum.WalkSpeed = 1.01
		local icri = CreateSound("1205111204", hed, 10, 1)
		swait(165)
		local FRAME = tors.CFrame
		repeat
			swait()
			Character.Head.face.Texture = "rbxassetid://582931093"
			CameraEnshaking(1, 10)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-90)), 0.1)
			tors.CFrame = FRAME * CF(0,1,0)
			swait()
			tors.CFrame = FRAME
		until icri.Playing == false
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
		hum.WalkSpeed = 16
	end

	function Dance()
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("838766490", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://258591579"
		for i = 0,2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,3,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function kyu_will_break_your_neck_asdf_longest_function_name_ever_xd()
		attack = true
		Character.Head.face.Texture = "rbxassetid://266304560"
		for i = 0,6,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.2 * Cos(sine / 20)) * angles(Rad(170), Rad(0), Rad(-15)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.3, 0.8 + 0.05 * Sin(sine / 30), -0.025 * Cos(sine / 20)) * angles(Rad(140), Rad(0), Rad(15)), 0.1)
		end
		CreateSound("1093102664", hed, 10, 1)
		CameraEnshaking(3, 8)
		for i = 0,2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(5), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(10), Rad(40), Rad(0)), 0.4)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.2 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-40)), 0.4)
			LW.C0 = clerp(LW.C0, CF(-1.3, 0.8 + 0.05 * Sin(sine / 30), -0.025 * Cos(sine / 20)) * angles(Rad(40), Rad(0), Rad(40)), 0.4)
		end
		Character.Head.face.Texture = "rbxassetid://30128383"
		hum.MaxHealth = 0
		ragdoll(char)
		CreateSound("534269232", hed, 5, 1)
		error("Seems like you just died.")
	end

	MoreTaunts = false
	mouse.KeyDown:connect(function(key)
		if attack == false then
			if MoreTaunts == false then
				if key == 'q' then
					GEtOuT()
				elseif key == 'e' then
					GEtOuT2()
				elseif key == 'x' then
					OBJECTION()
				elseif key == 'n' then
					BOI()
				elseif key == 'u' then
					Victory()
				elseif key == '3' then
					hap()
				elseif key == '6' then
					Flight()
				elseif key == '9' and timetofly then
					FLYSKYHIGH()
				elseif key == '9' then
					local A = math.random(1,10)
					if A == 1 then
						warn ("This has a Cooldown, Please wait. :>")
					end
					if A == 2 then
						warn ("You can't Fly All day, you know.")
					end
					if A == 3 then
						warn ("Calm down there.")
					end
					if A == 4 then
						warn ("Take a Break.")
					end
					if A == 5 then
						warn ("*Elevator Music plays in the backround*")
					end
					if A == 6 then
						warn ("I know, You want to FLY SKY HIGH, but wait a little bit.")
					end
					if A == 7 then
						warn ("Can you wait a LITTLE Longer?")
					end
					if A == 8 then
						warn ("Like a tiger defying the laws of gravity...")
					end
					if A == 9 then
						warn ("DON'T STOP ME NNNNNOOOOOOOOWWWW")
					end
					if A == 10 then
						warn ("Oh, I'm burnin' through the sky, Yeah!")
					end
				elseif key == 'k' then
					Hello()
				elseif key == '5' then
					HAAAAA()
				elseif key == '4' then
					Dance()
				elseif key == '1' then
					HELP()
				elseif key == '2' then
					dead()
				elseif key == 'j' then
					WhatHuh()
				elseif key == 'l' then
					ShutTheHellUp()
				elseif key == 'c' then
					Choose()
				elseif key == 'r' then
					MYSPAGHETTTTTTT()
				elseif key == 't' then
					SpinMeDad()
				elseif key == 'y' then
					EndMySufferingV2()
				elseif key == 'f' then
					NEN()
				elseif key == 'z' then
					NothingPersonal()
				elseif key == '7' then
					somuchcancerwhy()
				elseif key == '8' then
					highnoon()
				elseif key == 'v' then
					VeryMuchWorrying()
				elseif key == 'b' then
					Ashes()
				elseif key == 'p' then
					kyu_will_break_your_neck_asdf_longest_function_name_ever_xd()
				elseif key == 'g' then
					AnotherOne()
				elseif key == 'h' then
					slap()
				elseif key == 'm' then
					WRY()
				end
			end
		end
	end)

	-------------------------------------------------------
	--End Attacks N Stuff--
	-------------------------------------------------------




	while jumping do
		Humanoid.Jump = true
		wait(0.9)
	end




	-------------------------------------------------------
	--Start Animations--
	-------------------------------------------------------
	local equipped = false
	local idle = 0
	local change = 1
	local val = 0
	local toim = 0
	local idleanim = 0.4
	hum.Animator.Parent = nil
	while true do
		swait()
		sine = sine + change
		local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
		local velderp = root.Velocity.y
		hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
		if equipped == true or equipped == false then
			if attack == false then
				idle = idle + 1
			else
				idle = 0
			end
			if 1 < root.Velocity.y and hitfloor == nil then
				Anim = "Jump"
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.3)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-40), Rad(0), Rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(Rad(30), Rad(0), Rad(20)), 0.3)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(Rad(-20), Rad(0), Rad(-30)), 0.3)
					LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -0.3) * LHCF * angles(Rad(-5), Rad(0), Rad(20)), 0.15)
					RH.C0 = clerp(RH.C0, CF(1, -1, 0.3) * angles(Rad(0), Rad(90), Rad(-20)), 0.3)
				end
			elseif -1 > root.Velocity.y and hitfloor == nil then
				Anim = "Fall"
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-5), Rad(0), Rad(0)), 0.3)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(40), Rad(0), Rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(Rad(30), Rad(0), Rad(20)), 0.3)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(Rad(-20), Rad(0), Rad(-30)), 0.3)
					LH.C0=clerp(LH.C0, CF(-1,-.4-0.1 * Cos(sine / 20), -.6) * LHCF * angles(Rad(-5), Rad(-0), Rad(20)), 0.15)
					RH.C0=clerp(RH.C0, CF(1,-.3-0.1 * Cos(sine / 20), -.6) * angles(Rad(0), Rad(90), Rad(-20)), .3)
				end
			elseif torvel < 1 and hitfloor ~= nil then
				Anim = "Idle"
				change = 1
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
					RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
					LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(30 * Cos(sine / 20)), Rad(0), Rad(5)), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(30 * Cos(sine / 20)), Rad(0), Rad(-5)), 0.1)
				end
			elseif tors.Velocity.magnitude < 50 and hitfloor ~= nil then
				Anim = "Walk"
				change = 1
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(9-2.5 * Cos(sine / 3.5)), Rad(0), Rad(10 * Cos(sine / 7))), 0.15)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(1, -0.925 - 0.5 * math.cos(sine / 7) / 2, 0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 - 35 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90 - 2 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 + 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.925 + 0.5 * math.cos(sine / 7) / 2, -0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 35 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90 - 2 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 - 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(70) * Cos(sine / 7) , Rad(0), Rad(5)), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-70) * Cos(sine / 7) , Rad(0),	Rad(-5)), 0.1)
				end
			end
		end
		if 0 < #Effects then
			for e = 1, #Effects do
				if Effects[e] ~= nil then
					local Thing = Effects[e]
					if Thing ~= nil then
						local Part = Thing[1]
						local Mode = Thing[2]
						local Delay = Thing[3]
						local IncX = Thing[4]
						local IncY = Thing[5]
						local IncZ = Thing[6]
						if 1 >= Thing[1].Transparency then
							if Thing[2] == "Block1" then
								Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
								local Mesh = Thing[1].Mesh
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Block2" then
								Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
								local Mesh = Thing[7]
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Block3" then
								Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
								local Mesh = Thing[7]
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Cylinder" then
								local Mesh = Thing[1].Mesh
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Blood" then
								local Mesh = Thing[7]
								Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Elec" then
								local Mesh = Thing[1].Mesh
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Disappear" then
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Shatter" then
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
								Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
								Thing[6] = Thing[6] + Thing[5]
							end
						else
							Part.Parent = nil
							table.remove(Effects, e)
						end
					end
				end
			end
		end
	end
	-------------------------------------------------------
	--End Animations And Script--
	-------------------------------------------------------

	--cool beans boibipartigetgenv().mode = "Autumn" -- Choose from Summer and Autumn (Summer looks bad ngl)




	local a = game.Lighting
	a.Ambient = Color3.fromRGB(33, 33, 33)
	a.Brightness = 6.67
	a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
	a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
	a.EnvironmentDiffuseScale = 0.105
	a.EnvironmentSpecularScale = 0.522
	a.GlobalShadows = true
	a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
	a.ShadowSoftness = 0.04
	a.GeographicLatitude = -15.525
	a.ExposureCompensation = 0.75
	local b = Instance.new("BloomEffect", a)
	b.Enabled = true
	b.Intensity = 0.04
	b.Size = 1900
	b.Threshold = 0.915
	local c = Instance.new("ColorCorrectionEffect", a)
	c.Brightness = 0.176
	c.Contrast = 0.39
	c.Enabled = true
	c.Saturation = 0.2
	c.TintColor = Color3.fromRGB(217, 145, 57)
	if getgenv().mode == "Summer" then
		c.TintColor = Color3.fromRGB(255, 220, 148)
	elseif getgenv().mode == "Autumn" then
		c.TintColor = Color3.fromRGB(217, 145, 57)
	else
		warn("No mode selected!")
		print("Please select a mode")
		b:Destroy()
		c:Destroy()
	end
	local d = Instance.new("DepthOfFieldEffect", a)
	d.Enabled = true
	d.FarIntensity = 0.077
	d.FocusDistance = 21.54
	d.InFocusRadius = 20.77
	d.NearIntensity = 0.277
	local e = Instance.new("ColorCorrectionEffect", a)
	e.Brightness = 0
	e.Contrast = -0.07
	e.Saturation = 0
	e.Enabled = true
	e.TintColor = Color3.fromRGB(255, 247, 239)
	local e2 = Instance.new("ColorCorrectionEffect", a)
	e2.Brightness = 0.2
	e2.Contrast = 0.45
	e2.Saturation = -0.1
	e2.Enabled = true
	e2.TintColor = Color3.fromRGB(255, 255, 255)
	local s = Instance.new("SunRaysEffect", a)
	s.Enabled = true
	s.Intensity = 0.01
	s.Spread = 0.146

	print("RTX Graphics loaded \n created by Rawget#0001")
end)

Memeus.Name = "Memeus"
Memeus.Parent = Frame
Memeus.BackgroundColor3 = Color3.fromRGB(255, 233, 234)
Memeus.BorderSizePixel = 3
Memeus.Position = UDim2.new(0.0646766201, 0, 0.233147159, 0)
Memeus.Size = UDim2.new(0, 139, 0, 31)
Memeus.Font = Enum.Font.SourceSansBold
Memeus.Text = "Memus V2.5"
Memeus.TextColor3 = Color3.fromRGB(0, 0, 0)
Memeus.TextSize = 14.000
Memeus.TextWrapped = true
Memeus.MouseButton1Down:connect(function()
	-- This script has been converted to FE by iPxter


	if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
	local Player,Mouse,mouse,UserInputService,ContextActionService = owner
	do
		print("FE Compatibility code by Mokiros | Translated to FE by iPxter")
		script.Parent = Player.Character

		--RemoteEvent for communicating
		local Event = Instance.new("RemoteEvent")
		Event.Name = "UserInput_Event"

		--Fake event to make stuff like Mouse.KeyDown work
		local function fakeEvent()
			local t = {_fakeEvent=true,Connect=function(self,f)self.Function=f end}
			t.connect = t.Connect
			return t
		end

		--Creating fake input objects with fake variables
		local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
		local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
		local CAS = {Actions={},BindAction=function(self,name,fun,touch,...)
			CAS.Actions[name] = fun and {Name=name,Function=fun,Keys={...}} or nil
		end}
		--Merged 2 functions into one by checking amount of arguments
		CAS.UnbindAction = CAS.BindAction

		--This function will trigger the events that have been :Connect()'ed
		local function te(self,ev,...)
			local t = m[ev]
			if t and t._fakeEvent and t.Function then
				t.Function(...)
			end
		end
		m.TrigEvent = te
		UIS.TrigEvent = te

		Event.OnServerEvent:Connect(function(plr,io)
			if plr~=Player then return end
			if io.isMouse then
				m.Target = io.Target
				m.Hit = io.Hit
			else
				local b = io.UserInputState == Enum.UserInputState.Begin
				if io.UserInputType == Enum.UserInputType.MouseButton1 then
					return m:TrigEvent(b and "Button1Down" or "Button1Up")
				end
				for _,t in pairs(CAS.Actions) do
					for _,k in pairs(t.Keys) do
						if k==io.KeyCode then
							t.Function(t.Name,io.UserInputState,io)
						end
					end
				end
				m:TrigEvent(b and "KeyDown" or "KeyUp",io.KeyCode.Name:lower())
				UIS:TrigEvent(b and "InputBegan" or "InputEnded",io,false)
			end
		end)
		Event.Parent = NLS([==[
	local Player = game:GetService("Players").LocalPlayer
	local Event = script:WaitForChild("UserInput_Event")

	local UIS = game:GetService("UserInputService")
	local input = function(io,a)
		if a then return end
		--Since InputObject is a client-side instance, we create and pass table instead
		Event:FireServer({KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState})
	end
	UIS.InputBegan:Connect(input)
	UIS.InputEnded:Connect(input)

	local Mouse = Player:GetMouse()
	local h,t
	--Give the server mouse data 30 times every second, but only if the values changed
	--If player is not moving their mouse, client won't fire events
	while wait(1/30) do
		if h~=Mouse.Hit or t~=Mouse.Target then
			h,t=Mouse.Hit,Mouse.Target
			Event:FireServer({isMouse=true,Target=t,Hit=h})
		end
	end]==],Player.Character)
		Mouse,mouse,UserInputService,ContextActionService = m,m,UIS,CAS
	end
	-----------------------
	--MemeusV2--
	-------------------------------------------------------
	--A script By makhail07

	--This edit by 2003boobear

	--Discord Creterisk#2958 (not 2003boobear's discord)
	-------------------------------------------------------

	local FavIDs = {
		340106355, --Nefl Crystals
		927529620, --Dimension
		876981900, --Fantasy
		398987889, --Ordinary Days
		1117396305, --Oh wait, it's you.
		885996042, --Action Winter Journey
		919231299, --Sprawling Idiot Effigy
		743466274, --Good Day Sunshine
		727411183, --Knife Fight
		1402748531, --The Earth Is Counting On You!
		595230126 --Robot Language
	}



	--The reality of my life isn't real but a Universe -makhail07
	wait()
	local Player = owner
	local Character = Player.Character
	local plr = owner
	local Humanoid = Character.Humanoid
	local char = plr.Character
	local hum = char.Humanoid
	local ra = char["Right Arm"]
	local la= char["Left Arm"]
	local rl= char["Right Leg"]
	local ll = char["Left Leg"]
	local hed = char.Head
	local root = char.HumanoidRootPart
	local rootj = root.RootJoint
	local tors = char.Torso
	local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
	local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
	local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
	local cam = game.Workspace.CurrentCamera
	trazx = Instance.new("ParticleEmitter")
	c = owner.Character

	--where i put all the warn things

	warn ("Well Look at that, I finished it.")
	--Looks Like you decided to look though the script. Well, Hello.
	warn ("I had a fun time making this edit.")
	--I Really DID have fun editing this.
	warn ("I hope you Enjoy this. Go have Fun!")
	--Just don't abuse.
	warn ("Also, the original MemeusV2 was made by makhail07.")
	--Support makhail07 for making the original!
	warn ("This edit was made by me, 2003boobear.")
	--This is one of my best edits BY FAR, though.
	Character.Head.face.Texture = "rbxassetid://620619801"

	-------------------------------------------------------
	--Start Good Stuff--
	-------------------------------------------------------
	CF = CFrame.new
	angles = CFrame.Angles
	attack = false
	timetofly = true
	Euler = CFrame.fromEulerAnglesXYZ
	Rad = math.rad
	IT = Instance.new
	BrickC = BrickColor.new
	Cos = math.cos
	Acos = math.acos
	Sin = math.sin
	Asin = math.asin
	Abs = math.abs
	Mrandom = math.random
	Floor = math.floor
	random = math.random
	radian = math.rad
	Vec3 = Vector3.new
	cFrame = CFrame.new
	Euler = CFrame.fromEulerAnglesXYZ
	-------------------------------------------------------
	--End Good Stuff--
	-------------------------------------------------------
	necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
	RSH, LSH = nil, nil 
	RW = Instance.new("Weld") 
	LW = Instance.new("Weld")
	RH = tors["Right Hip"]
	LH = tors["Left Hip"]
	RSH = tors["Right Shoulder"] 
	LSH = tors["Left Shoulder"] 
	RSH.Parent = nil 
	LSH.Parent = nil 
	RW.Name = "RW"
	RW.Part0 = tors 
	RW.C0 = CF(1.5, 0.5, 0)
	RW.C1 = CF(0, 0.5, 0) 
	RW.Part1 = ra
	RW.Parent = tors 
	LW.Name = "LW"
	LW.Part0 = tors 
	LW.C0 = CF(-1.5, 0.5, 0)
	LW.C1 = CF(0, 0.5, 0) 
	LW.Part1 = la
	LW.Parent = tors
	Effects = {}

	-------------------------------------------------------
	--Start HeartBeat--
	-------------------------------------------------------
	ArtificialHB = Instance.new("BindableEvent", script)
	ArtificialHB.Name = "Heartbeat"
	script:WaitForChild("Heartbeat")

	frame = 1 / 60
	tf = 0
	allowframeloss = false
	tossremainder = false


	lastframe = tick()
	script.Heartbeat:Fire()


	game:GetService("RunService").Heartbeat:connect(function(s, p)
		tf = tf + s
		if tf >= frame then
			if allowframeloss then
				script.Heartbeat:Fire()
				lastframe = tick()
			else
				for i = 1, math.floor(tf / frame) do
					script.Heartbeat:Fire()
				end
				lastframe = tick()
			end
			if tossremainder then
				tf = 0
			else
				tf = tf - frame * math.floor(tf / frame)
			end
		end
	end)
	-------------------------------------------------------
	--End HeartBeat--
	-------------------------------------------------------

	function CameraEnshaking(Length, Intensity) --Took Straight from StarGlitcher!
		coroutine.resume(coroutine.create(function()
			local intensity = 1 * Intensity
			local rotM = 0.01 * Intensity
			for i = 0, Length, 0.1 do
				swait()
				intensity = intensity - 0.05 * Intensity / Length
				rotM = rotM - 5.0E-4 * Intensity / Length
				hum.CameraOffset = Vec3(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity)))
				cam.CFrame = cam.CFrame * cFrame(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity))) * Euler(radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM)
			end
			Humanoid.CameraOffset = Vec3(0, 0, 0)
		end))
	end

	local joyemoji = Instance.new('ParticleEmitter', tors)
	joyemoji.VelocitySpread = 2000
	joyemoji.Lifetime = NumberRange.new(1)
	joyemoji.Speed = NumberRange.new(40)
	joy= {}
	for i=0, 19 do
		joy[#joy+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
	end
	joyemoji.Size = NumberSequence.new(joy)
	joyemoji.Rate = 0
	joyemoji.LockedToPart = false
	joyemoji.LightEmission = 0
	joyemoji.Texture = "rbxassetid://1176402123"
	joyemoji.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)


	local LIT = Instance.new('ParticleEmitter', tors)
	LIT.VelocitySpread = 2000
	LIT.Lifetime = NumberRange.new(1)
	LIT.Speed = NumberRange.new(45)
	nani= {}
	for i=0, 19 do
		nani[#nani+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
	end
	LIT.Size = NumberSequence.new(nani)
	LIT.Rate = 0
	LIT.LockedToPart = false
	LIT.LightEmission = 0
	LIT.Texture = "rbxassetid://1492670151"
	LIT.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)

	local toast = Instance.new('ParticleEmitter', tors)
	toast.VelocitySpread = 2000
	toast.Lifetime = NumberRange.new(1)
	toast.Speed = NumberRange.new(60)
	toasterstoasttoast= {}
	for i=0, 19 do
		toasterstoasttoast[#toasterstoasttoast+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
	end
	toast.Size = NumberSequence.new(toasterstoasttoast)
	toast.Rate = 0
	toast.LockedToPart = false
	toast.LightEmission = 0
	toast.Texture = "rbxassetid://436096230"
	toast.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)

	local ok = Instance.new('ParticleEmitter', tors)
	ok.VelocitySpread = 2000
	ok.Lifetime = NumberRange.new(1)
	ok.Speed = NumberRange.new(50)
	cool= {}
	for i=0, 19 do
		cool[#cool+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
	end
	ok.Size = NumberSequence.new(cool)
	ok.Rate = 0
	ok.LockedToPart = false
	ok.LightEmission = 0
	ok.Texture = "rbxassetid://636768448"
	ok.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)

	-------------------------------------------------------
	--Start Kyu's shitty stuff--
	-------------------------------------------------------

	function ragdoll(model)
		local char = model
		torso = char.HumanoidRootPart
		torso2 = char.Torso
		LW.Parent = nil
		RW.Parent = nil
		LH.Parent = nil
		RH.Parent = nil
		if hum ~= nil then
			hum.PlatformStand = true
		end

		local Head = char:FindFirstChild("Head")
		if Head then
			local Neck = Instance.new("Weld")
			Neck.Name = "Neck"
			Neck.Part0 = torso
			Neck.Part1 = Head
			Neck.C0 = CFrame.new(0, 1.5, 0)
			Neck.C1 = CFrame.new()
			Neck.Parent = torso
		end
		local Limb = char:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = torso.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightShoulder"
			Joint.Part0 = torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = char
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = char:FindFirstChild("Left Arm")
		if Limb then

			Limb.CFrame = torso.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = char
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = char:FindFirstChild("Right Leg")
		if Limb then

			Limb.CFrame = torso.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightHip"
			Joint.Part0 = torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = char
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = char:FindFirstChild("Left Leg")
		if Limb then

			Limb.CFrame = torso.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftHip"
			Joint.Part0 = torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = char
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		--[
		local Bar = Instance.new("Part")
		Bar.TopSurface = 0
		Bar.BottomSurface = 0
		Bar.formFactor = "Symmetric"
		Bar.Size = Vector3.new(1, 1, 1)
		Bar.Transparency = 1
		Bar.CFrame = torso.CFrame * CFrame.new(0, 0.5, 0)
		Bar.Parent = char
		local Weld = Instance.new("Weld")
		Weld.Part0 = torso
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = torso
		--]]

		torso.CFrame = CFrame.new(torso.Position)*CFrame.Angles(math.rad(20),math.rad(torso.Orientation.Y),math.rad(torso.Orientation.Z))

	end

	-------------------------------------------------------
	--End Kyu's shitty stuff--
	-------------------------------------------------------

	-------------------------------------------------------
	--Start Important Functions--
	-------------------------------------------------------
	function swait(num)
		if num == 0 or num == nil then
			game:service("RunService").Stepped:wait(0)
		else
			for i = 0, num do
				game:service("RunService").Stepped:wait(0)
			end
		end
	end
	function thread(f)
		coroutine.resume(coroutine.create(f))
	end
	function clerp(a, b, t)
		local qa = {
			QuaternionFromCFrame(a)
		}
		local qb = {
			QuaternionFromCFrame(b)
		}
		local ax, ay, az = a.x, a.y, a.z
		local bx, by, bz = b.x, b.y, b.z
		local _t = 1 - t
		return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
	end
	function QuaternionFromCFrame(cf)
		local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
		local trace = m00 + m11 + m22
		if trace > 0 then
			local s = math.sqrt(1 + trace)
			local recip = 0.5 / s
			return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
		else
			local i = 0
			if m00 < m11 then
				i = 1
			end
			if m22 > (i == 0 and m00 or m11) then
				i = 2
			end
			if i == 0 then
				local s = math.sqrt(m00 - m11 - m22 + 1)
				local recip = 0.5 / s
				return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
			elseif i == 1 then
				local s = math.sqrt(m11 - m22 - m00 + 1)
				local recip = 0.5 / s
				return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
			elseif i == 2 then
				local s = math.sqrt(m22 - m00 - m11 + 1)
				local recip = 0.5 / s
				return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
			end
		end
	end
	function QuaternionToCFrame(px, py, pz, x, y, z, w)
		local xs, ys, zs = x + x, y + y, z + z
		local wx, wy, wz = w * xs, w * ys, w * zs
		local xx = x * xs
		local xy = x * ys
		local xz = x * zs
		local yy = y * ys
		local yz = y * zs
		local zz = z * zs
		return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
	end
	function QuaternionSlerp(a, b, t)
		local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
		local startInterp, finishInterp
		if cosTheta >= 1.0E-4 then
			if 1 - cosTheta > 1.0E-4 then
				local theta = math.acos(cosTheta)
				local invSinTheta = 1 / Sin(theta)
				startInterp = Sin((1 - t) * theta) * invSinTheta
				finishInterp = Sin(t * theta) * invSinTheta
			else
				startInterp = 1 - t
				finishInterp = t
			end
		elseif 1 + cosTheta > 1.0E-4 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((t - 1) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
		return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
	end
	function rayCast(Position, Direction, Range, Ignore)
		return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
	end
	local RbxUtility = LoadLibrary("RbxUtility")
	local Create = RbxUtility.Create

	-------------------------------------------------------
	--Start Damage Function--
	-------------------------------------------------------
	function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
		if hit.Parent == nil then
			return
		end
		local h = hit.Parent:FindFirstChildOfClass("Humanoid")
		for _, v in pairs(hit.Parent:children()) do
			if v:IsA("Humanoid") then
				h = v
			end
		end
		if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("UpperTorso") ~= nil then
			warn'No R15 allowed'
			hit.Parent:FindFirstChild("Head"):BreakJoints()
		end

		if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
			if hit.Parent:findFirstChild("DebounceHit") ~= nil then
				if hit.Parent.DebounceHit.Value == true then
					return
				end
			end
			if insta == true then
				hit.Parent:FindFirstChild("Head"):BreakJoints()
			end
			local c = Create("ObjectValue"){
				Name = "creator",
				Value = owner,
				Parent = h,
			}
			game:GetService("Debris"):AddItem(c, .5)
			if HitSound ~= nil and HitPitch ~= nil then
				CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
			end
			local Damage = math.random(minim, maxim)
			local blocked = false
			local block = hit.Parent:findFirstChild("Block")
			if block ~= nil then
				if block.className == "IntValue" then
					if block.Value > 0 then
						blocked = true
						block.Value = block.Value - 1
						print(block.Value)
					end
				end
			end
			if blocked == false then
				h.Health = h.Health - Damage
				ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
			else
				h.Health = h.Health - (Damage / 2)
				ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
			end
			if Type == "Knockdown" then
				local hum = hit.Parent.Humanoid
				hum.PlatformStand = true
				coroutine.resume(coroutine.create(function(HHumanoid)
					swait(1)
					HHumanoid.PlatformStand = false
				end), hum)
				local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
				local bodvol = Create("BodyVelocity"){
					velocity = angle * knockback,
					P = 5000,
					maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
					Parent = hit,
				}
				local rl = Create("BodyAngularVelocity"){
					P = 3000,
					maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
					angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
					Parent = hit,
				}
				game:GetService("Debris"):AddItem(bodvol, .5)
				game:GetService("Debris"):AddItem(rl, .5)
			elseif Type == "Normal" then
				local vp = Create("BodyVelocity"){
					P = 500,
					maxForce = Vector3.new(math.huge, 0, math.huge),
					velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
				}
				if knockback > 0 then
					vp.Parent = hit.Parent.Torso
				end
				game:GetService("Debris"):AddItem(vp, .5)
			elseif Type == "Up" then
				local bodyVelocity = Create("BodyVelocity"){
					velocity = Vector3.new(0, 20, 0),
					P = 5000,
					maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
					Parent = hit,
				}
				game:GetService("Debris"):AddItem(bodyVelocity, .5)
			elseif Type == "DarkUp" then
				coroutine.resume(coroutine.create(function()
					for i = 0, 1, 0.1 do
						swait()
						Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
					end
				end))
				local bodyVelocity = Create("BodyVelocity"){
					velocity = Vector3.new(0, 20, 0),
					P = 5000,
					maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
					Parent = hit,
				}
				game:GetService("Debris"):AddItem(bodyVelocity, 1)
			elseif Type == "Snare" then
				local bp = Create("BodyPosition"){
					P = 2000,
					D = 100,
					maxForce = Vector3.new(math.huge, math.huge, math.huge),
					position = hit.Parent.Torso.Position,
					Parent = hit.Parent.Torso,
				}
				game:GetService("Debris"):AddItem(bp, 1)
			elseif Type == "Freeze" then
				local BodPos = Create("BodyPosition"){
					P = 50000,
					D = 1000,
					maxForce = Vector3.new(math.huge, math.huge, math.huge),
					position = hit.Parent.Torso.Position,
					Parent = hit.Parent.Torso,
				}
				local BodGy = Create("BodyGyro") {
					maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
					P = 20e+003,
					Parent = hit.Parent.Torso,
					cframe = hit.Parent.Torso.CFrame,
				}
				hit.Parent.Torso.Anchored = true
				coroutine.resume(coroutine.create(function(Part) 
					swait(1.5)
					Part.Anchored = false
				end), hit.Parent.Torso)
				game:GetService("Debris"):AddItem(BodPos, 3)
				game:GetService("Debris"):AddItem(BodGy, 3)
			end
			local debounce = Create("BoolValue"){
				Name = "DebounceHit",
				Parent = hit.Parent,
				Value = true,
			}
			game:GetService("Debris"):AddItem(debounce, Delay)
			c = Create("ObjectValue"){
				Name = "creator",
				Value = Player,
				Parent = h,
			}
			game:GetService("Debris"):AddItem(c, .5)
		end
	end
	-------------------------------------------------------
	--End Damage Function--
	-------------------------------------------------------

	-------------------------------------------------------
	--Start Damage Function Customization--
	-------------------------------------------------------
	function ShowDamage(Pos, Text, Time, Color)
		local Rate = (1 / 30)
		local Pos = (Pos or Vector3.new(0, 0, 0))
		local Text = (Text or "")
		local Time = (Time or 2)
		local Color = (Color or Color3.new(1, 0, 1))
		local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
		EffectPart.Anchored = true
		local BillboardGui = Create("BillboardGui"){
			Size = UDim2.new(3, 0, 3, 0),
			Adornee = EffectPart,
			Parent = EffectPart,
		}
		local TextLabel = Create("TextLabel"){
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Text = Text,
			Font = "Highway",
			TextColor3 = Color,
			TextScaled = true,
			Parent = BillboardGui,
		}
		game.Debris:AddItem(EffectPart, (Time))
		EffectPart.Parent = game:GetService("Workspace")
		delay(0, function()
			local Frames = (Time / Rate)
			for Frame = 1, Frames do
				wait(Rate)
				local Percent = (Frame / Frames)
				EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
				TextLabel.TextTransparency = Percent
			end
			if EffectPart and EffectPart.Parent then
				EffectPart:Destroy()
			end
		end)
	end
	-------------------------------------------------------
	--End Damage Function Customization--
	-------------------------------------------------------

	function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
		for _, c in pairs(workspace:children()) do
			local hum = c:findFirstChild("Humanoid")
			if hum ~= nil then
				local head = c:findFirstChild("Head")
				if head ~= nil then
					local targ = head.Position - Part.Position
					local mag = targ.magnitude
					if magni >= mag and c.Name ~= plr.Name then
						Damage(head, head, mindam, maxdam, knock, Type, root, 0.1, "http://www.roblox.com/asset/?id=231917784", 1.2)
					end
				end
			end
		end
	end


	CFuncs = {
		Part = {
			Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
				local Part = Create("Part")({
					Parent = Parent,
					Reflectance = Reflectance,
					Transparency = Transparency,
					CanCollide = false,
					Locked = true,
					BrickColor = BrickColor.new(tostring(BColor)),
					Name = Name,
					Size = Size,
					Material = Material
				})
				RemoveOutlines(Part)
				return Part
			end
		},
		Mesh = {
			Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
				local Msh = Create(Mesh)({
					Parent = Part,
					Offset = OffSet,
					Scale = Scale
				})
				if Mesh == "SpecialMesh" then
					Msh.MeshType = MeshType
					Msh.MeshId = MeshId
				end
				return Msh
			end
		},
		Mesh = {
			Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
				local Msh = Create(Mesh)({
					Parent = Part,
					Offset = OffSet,
					Scale = Scale
				})
				if Mesh == "SpecialMesh" then
					Msh.MeshType = MeshType
					Msh.MeshId = MeshId
				end
				return Msh
			end
		},
		Weld = {
			Create = function(Parent, Part0, Part1, C0, C1)
				local Weld = Create("Weld")({
					Parent = Parent,
					Part0 = Part0,
					Part1 = Part1,
					C0 = C0,
					C1 = C1
				})
				return Weld
			end
		},
		Sound = {
			Create = function(id, par, vol, pit)
				coroutine.resume(coroutine.create(function()
					local S = Create("Sound")({
						Volume = vol,
						Pitch = pit or 1,
						SoundId = id,
						Parent = par or workspace
					})
					wait()
					S:play()
					game:GetService("Debris"):AddItem(S, 6)
				end))
			end
		},
		ParticleEmitter = {
			Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
				local fp = Create("ParticleEmitter")({
					Parent = Parent,
					Color = ColorSequence.new(Color1, Color2),
					LightEmission = LightEmission,
					Size = Size,
					Texture = Texture,
					Transparency = Transparency,
					ZOffset = ZOffset,
					Acceleration = Accel,
					Drag = Drag,
					LockedToPart = LockedToPart,
					VelocityInheritance = VelocityInheritance,
					EmissionDirection = EmissionDirection,
					Enabled = Enabled,
					Lifetime = LifeTime,
					Rate = Rate,
					Rotation = Rotation,
					RotSpeed = RotSpeed,
					Speed = Speed,
					VelocitySpread = VelocitySpread
				})
				return fp
			end
		}
	}
	function RemoveOutlines(part)
		part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
	end
	function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
		local Part = Create("Part")({
			formFactor = FormFactor,
			Parent = Parent,
			Reflectance = Reflectance,
			Transparency = Transparency,
			CanCollide = false,
			Locked = true,
			BrickColor = BrickColor.new(tostring(BColor)),
			Name = Name,
			Size = Size,
			Material = Material
		})
		RemoveOutlines(Part)
		return Part
	end
	function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
		local Msh = Create(Mesh)({
			Parent = Part,
			Offset = OffSet,
			Scale = Scale
		})
		if Mesh == "SpecialMesh" then
			Msh.MeshType = MeshType
			Msh.MeshId = MeshId
		end
		return Msh
	end
	function CreateWeld(Parent, Part0, Part1, C0, C1)
		local Weld = Create("Weld")({
			Parent = Parent,
			Part0 = Part0,
			Part1 = Part1,
			C0 = C0,
			C1 = C1
		})
		return Weld
	end


	-------------------------------------------------------
	--Start Effect Function--
	-------------------------------------------------------
	EffectModel = Instance.new("Model", char)
	Effects = {
		Block = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
				local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				if Type == 1 or Type == nil then
					table.insert(Effects, {
						prt,
						"Block1",
						delay,
						x3,
						y3,
						z3,
						msh
					})
				elseif Type == 2 then
					table.insert(Effects, {
						prt,
						"Block2",
						delay,
						x3,
						y3,
						z3,
						msh
					})
				else
					table.insert(Effects, {
						prt,
						"Block3",
						delay,
						x3,
						y3,
						z3,
						msh
					})
				end
			end
		},
		Sphere = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0,0,0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		},
		Cylinder = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		},
		Wave = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3 / 60,
					y3 / 60,
					z3 / 60,
					msh
				})
			end
		},
		Ring = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		},
		Break = {
			Create = function(brickcolor, cframe, x1, y1, z1)
				local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
				prt.Anchored = true
				prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				local num = math.random(10, 50) / 1000
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Shatter",
					num,
					prt.CFrame,
					math.random() - math.random(),
					0,
					math.random(50, 100) / 100
				})
			end
		},
		Spiral = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		},
		Push = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
				local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
				prt.Anchored = true
				prt.CFrame = cframe
				local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
				game:GetService("Debris"):AddItem(prt, 10)
				table.insert(Effects, {
					prt,
					"Cylinder",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		}
	}
	-------------------------------------------------------
	--End Effect Function--
	-------------------------------------------------------

	function CreateSound(ID, PARENT, VOLUME, PITCH) --Very important.
		local NSound = nil
		coroutine.resume(coroutine.create(function()
			NSound = Instance.new("Sound", PARENT)
			NSound.Volume = VOLUME
			NSound.Pitch = PITCH
			NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
			swait()
			NSound:play()
			game:GetService("Debris"):AddItem(NSound, 10)
		end))
		return NSound
	end





	-------------------------------------------------------
	--End Important Functions--
	-------------------------------------------------------

	chargeup = Instance.new("Sound", hed)
	chargeup.SoundId = "http://www.roblox.com/asset/?id=527276541"
	chargeup.Volume = 10
	chargeup.Pitch = 1
	chargeup.Looped = true
	chargeup.TimePosition = 1

	meme = Instance.new("Sound", hed)
	meme.SoundId = "http://www.roblox.com/asset/?id=291151190"
	meme.Volume = 10
	meme.Pitch = 1
	meme.Looped = true
	meme.TimePosition = 1

	local ohno = Instance.new("Sound")
	ohno.Parent = hed
	ohno.Volume = 10
	ohno.Pitch = 1
	ohno.Looped = true

	local bass = Instance.new("Sound") --why
	bass.Parent = hed
	bass.Volume = 7
	bass.Pitch = 1
	bass.SoundId = "http://www.roblox.com/asset/?id=1087356234"
	bass.Looped = true

	Cause_Im_having_a_good_time_having_a_good_time = Instance.new("Sound", hed) --DONT STOP ME NOOOOOOOOOWWWWWWWW
	Cause_Im_having_a_good_time_having_a_good_time.SoundId = "http://www.roblox.com/asset/?id=672104253"
	Cause_Im_having_a_good_time_having_a_good_time.Volume = 10
	Cause_Im_having_a_good_time_having_a_good_time.Pitch = 1
	Cause_Im_having_a_good_time_having_a_good_time.Looped = false
	Cause_Im_having_a_good_time_having_a_good_time.TimePosition = 35.3

	STHAP = Instance.new("Sound", hed)
	STHAP.SoundId = "http://www.roblox.com/asset/?id=1591656314"
	STHAP.Volume = 10
	STHAP.Pitch = 1
	STHAP.Looped = false

	forevergone = Instance.new("Sound", tors)
	forevergone.SoundId = "http://www.roblox.com/asset/?id=1286436928"
	forevergone.Volume = 10
	forevergone.Pitch = 1
	forevergone.Looped = true
	forevergone.TimePosition = 24

	-------------------------------------------------------
	--Start Music Option--
	-------------------------------------------------------
	local Music = Instance.new("Sound",tors)
	Music.Volume = 2.5
	Music.SoundId = "rbxassetid://"
	Music.Looped = true
	Music.Pitch = 1 --Pitcher
	Music:Play()
	-------------------------------------------------------
	--End Music Option--
	-------------------------------------------------------
	--hi fat >:)
	-------------------------------------------------------
	--Start Attacks N Stuff--
	-------------------------------------------------------
	local sine=0
	function HitboxFunction(Pose, lifetime, siz1, siz2, siz3, Radie, Min, Max, kb, atype)
		local Hitboxpart = Instance.new("Part", EffectModel)
		RemoveOutlines(Hitboxpart)
		Hitboxpart.Size = Vector3.new(siz1, siz2, siz3)
		Hitboxpart.CanCollide = false
		Hitboxpart.Transparency = 1
		Hitboxpart.Anchored = true
		Hitboxpart.CFrame = Pose
		game:GetService("Debris"):AddItem(Hitboxpart, lifetime)
		MagniDamage(Hitboxpart, Radie, Min, Max, kb, atype)
	end
	function GEtOuT()
		attack = true
		hum.WalkSpeed = 10
		Character.Head.face.Texture = "rbxassetid://494811799"
		CreateSound("814652778", hed, 10, 1)
		CreateSound("537371462", hed, 10, 1)
		local vel3 = Instance.new("BodyVelocity",tors)
		vel3.Velocity = Vector3.new(0,25,0)
		vel3.MaxForce = Vector3.new(10000000,10000000,10000000)
		for i = 0,12,0.1 do
			swait()
			CameraEnshaking(1, 2)
			HitboxFunction(ll.CFrame, 0.01, 1, 1, 1, 7, 20, 99, 53, "Knockdown")
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.3)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-40), Rad(0), Rad(0)), 0.3)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(Rad(30), Rad(0), Rad(20)), 0.3)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(Rad(-20), Rad(0), Rad(-30)), 0.3)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -0.3) * LHCF * angles(Rad(-5), Rad(0), Rad(20)), 0.15)
			RH.C0 = clerp(RH.C0, CF(1, -1, 0.3) * angles(Rad(0), Rad(90), Rad(-20)), 0.3)
		end
		vel3:Destroy()
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
		Humanoid.JumpPower = 50
		hum.WalkSpeed = 16
	end

	function GEtOuT2()
		attack = true
		hum.WalkSpeed = 10
		Humanoid.JumpPower = 0
		Character.Head.face.Texture = "rbxassetid://494811799"
		CreateSound("814652778", hed, 10, 1)
		CreateSound("537371462", hed, 10, 1)
		root.Velocity = root.CFrame.lookVector * 20
		for i = 0,12,0.1 do
			swait()
			CameraEnshaking(1, 2)
			root.Velocity = root.CFrame.lookVector * 50
			HitboxFunction(ll.CFrame, 0.01, 1, 1, 1, 7, 10, 50, 53, "Knockdown")
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(0-255.45*i)), 0.3)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-40), Rad(0), Rad(0)), 0.3)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(Rad(30), Rad(0), Rad(20)), 0.3)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(Rad(-20), Rad(0), Rad(-30)), 0.3)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -0.3) * LHCF * angles(Rad(-5), Rad(0), Rad(20)), 0.15)
			RH.C0 = clerp(RH.C0, CF(1, -1, 0.3) * angles(Rad(0), Rad(90), Rad(-20)), 0.3)
		end
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
		Humanoid.JumpPower = 50
		hum.WalkSpeed = 16
	end
	function Flight() --wowthatsdiffrent
		attack = true
		Character.Head.face.Texture = "rbxassetid://269748407"
		local ColorsArray ={ColorSequenceKeypoint.new(0, Color3.new(1,0,0)),
			ColorSequenceKeypoint.new(0.16, Color3.new(1,1,1)),
			ColorSequenceKeypoint.new(0.32, Color3.new(0,0,1)),
			ColorSequenceKeypoint.new(0.48, Color3.new(1,1,1)),
			ColorSequenceKeypoint.new(0.64, Color3.new(1,0,0)),
			ColorSequenceKeypoint.new(0.80, Color3.new(1,1,1)),
			ColorSequenceKeypoint.new(0.96, Color3.new(0,0,1)),
			ColorSequenceKeypoint.new(1, Color3.new(1,1,1))}
		local vel4 = Instance.new("BodyVelocity",ll)
		vel4.Velocity = Vector3.new(0,4,0)
		vel4.MaxForce = Vector3.new(10000000,10000000,10000000)
		local Atch3 = Instance.new("Attachment",ll)Atch3.Position = Vector3.new(0,0.6,0)
		local Atch4 = Instance.new("Attachment",ll)Atch4.Position = Vector3.new(0,-0.6,0)
		local Trail2 = Instance.new("Trail",ll)Trail2.Attachment0 = Atch3 Trail2.Attachment1 = Atch4
		Trail2.Texture = "rbxassetid://22636887" Trail2.Lifetime = 0.2 Trail2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
		Trail2.Color = ColorSequence.new(ColorsArray) Trail2.LightEmission = 1 
		Trail2.Enabled = true
		local Atch5 = Instance.new("Attachment",rl)Atch5.Position = Vector3.new(0,0.6,0)
		local Atch6 = Instance.new("Attachment",rl)Atch6.Position = Vector3.new(0,-0.6,0)
		local Trail3 = Instance.new("Trail",rl)Trail3.Attachment0 = Atch5 Trail3.Attachment1 = Atch6
		Trail3.Texture = "rbxassetid://22636887" Trail3.Lifetime = 0.2 Trail3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
		Trail3.Color = ColorSequence.new(ColorsArray) Trail3.LightEmission = 1 
		Trail3.Enabled = true
		local Atch7 = Instance.new("Attachment",ra)Atch7.Position = Vector3.new(0,0.6,0)
		local Atch8 = Instance.new("Attachment",ra)Atch8.Position = Vector3.new(0,-0.6,0)
		local Trail4 = Instance.new("Trail",ra)Trail4.Attachment0 = Atch7 Trail4.Attachment1 = Atch8
		Trail4.Texture = "rbxassetid://22636887" Trail4.Lifetime = 0.2 Trail4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
		Trail4.Color = ColorSequence.new(ColorsArray) Trail4.LightEmission = 1 
		Trail4.Enabled = true
		local Atch9 = Instance.new("Attachment",la)Atch9.Position = Vector3.new(0,0.6,0)
		local Atch10 = Instance.new("Attachment",la)Atch10.Position = Vector3.new(0,-0.6,0)
		local Trail5 = Instance.new("Trail",la)Trail5.Attachment0 = Atch9 Trail5.Attachment1 = Atch10
		Trail5.Texture = "rbxassetid://22636887" Trail5.Lifetime = 0.2 Trail5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
		Trail5.Color = ColorSequence.new(ColorsArray) Trail5.LightEmission = 1 
		Trail5.Enabled = true
		local Atch1 = Instance.new("Attachment",Torso)Atch1.Position = Vector3.new(0,2,0)
		local Atch2 = Instance.new("Attachment",Torso)Atch2.Position = Vector3.new(0,-2.5,0)
		local Trail = Instance.new("Trail",Torso)Trail.Attachment0 = Atch1 Trail.Attachment1 = Atch2
		Trail.Texture = "rbxassetid://22636887" Trail.Lifetime = 0.2 Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
		Trail.Color = ColorSequence.new(ColorsArray) Trail.LightEmission = 1 
		Trail.Enabled = false
		ragdoll(char)
		wait(1)
		Character.Head.face.Texture = "rbxassetid://249062487"
		CreateSound("948494432", hed, 10, 1)
		wait(2)
		Character.Head.face.Texture = "rbxassetid://269748407"
		CreateSound("633394595", hed, 10, 1)
		wait(2)
		Character.Head.face.Texture = "rbxassetid://494811799"
		STHAP:play()
		wait(11)
		forevergone:play()
	end

	function OBJECTION()
		attack = true
		hum.WalkSpeed = 10
		Character.Head.face.Texture = "rbxassetid://55831869"
		CreateSound("330859085", hed, 10, 1)
		for i = 0,8,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function Hello()
		attack = true
		hum.WalkSpeed = 10
		Character.Head.face.Texture = "rbxassetid://334668738"
		CreateSound("855338765", hed, 10, 0.9)
		for i = 0,3,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(20), Rad(-5)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function Victory()
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://616284160"
		Humanoid.Jump = true
		CreateSound("130834939", hed, 10, 1)
		for i = 0,3.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(20), Rad(-5)), 0.1)
		end
		Humanoid.Jump = true
		for i = 0,3.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(40)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(40)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-180), Rad(-25), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-0)), 0.1)
		end
		Humanoid.Jump = true
		for i = 0,3.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(20), Rad(-5)), 0.1)
		end
		Humanoid.Jump = true
		for i = 0,3.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(40)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(40)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-180), Rad(-25), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-0)), 0.1)
		end
		Humanoid.Jump = true
		for i = 0,3.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-40)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(20), Rad(-5)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function ShutTheHellUp()
		attack = true
		hum.WalkSpeed = 2.01
		Character.Head.face.Texture = "rbxassetid://963148419"
		CreateSound("336377340", hed, 10, 1)
		for i = 0,3,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,1.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,1.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-5), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,1.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,1.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-5), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(120), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		for i = 0,2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		end
		hum.WalkSpeed = 16
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
	end

	function SpinMeDad() --YOU SPIN ME RIGHT ROUND BABY RIGHT ROUND
		attack = true
		hum.WalkSpeed = 5
		Humanoid.JumpPower = 175
		Character.Head.face.Texture = "rbxassetid://1223903433"
		CreateSound("145799973", hed, 10, 1)
		local vel2 = Instance.new("BodyVelocity",tors)
		vel2.Velocity = Vector3.new(0,1.2,0)
		vel2.MaxForce = Vector3.new(10000000,10000000,10000000)
		for i = 0,60,0.1 do
			HitboxFunction(ll.CFrame, 0.01, 1, 1, 1, 7, 5, 20, 53, "Knockdown")
			swait()
			CameraEnshaking(1, 1)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-90)), 0.1)
		end
		hum.WalkSpeed = 16
		vel2:Destroy()
		Character.Head.face.Texture = "rbxassetid://620619801"
		Humanoid.JumpPower = 50
		attack = false
	end

	function EndMySufferingV2() --why
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://202210455"
		local A = math.random(1,5)
		if A == 1 then
			meme.SoundId = "rbxassetid://295810519"
		end
		if A == 2 then
			meme.SoundId = "rbxassetid://1124778077"
		end
		if A == 3 then
			meme.SoundId = "rbxassetid://464157070"
		end
		if A == 4 then
			meme.SoundId = "rbxassetid://146334595"
		end
		if A == 5 then
			meme.SoundId = "rbxassetid://145536915"
		end
		meme:Play()
		bass:Play()
		joyemoji.Rate = 70
		LIT.Rate = 70
		ok.Rate = 70
		toast.Rate = 70

		for i = 0,50,0.1 do
			swait()
			CameraEnshaking(1, 10)
			bass.Parent = hed
			meme.Parent = hed
			rootj.C0=clerp(rootj.C0,RootCF*CF(0,0,-0.1+0.1*math.cos(sine/20))*angles(math.rad(15),math.rad(-10),math.rad(0)),0.15)
			tors.Neck.C0=clerp(tors.Neck.C0,necko*angles(math.rad(35),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,CF(1,-.9-0.1*math.cos(sine/20),.025*math.cos(sine/20))*RHCF*angles(math.rad(-5),math.rad(0),math.rad(0)),0.15)
			LH.C0=clerp(LH.C0,CF(-1,-.9-0.1*math.cos(sine/20),.025*math.cos(sine/20))*LHCF*angles(math.rad(-5),math.rad(-0),math.rad(-20)),0.15)
			RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5+0.1*math.sin(sine/30), -0.6) * angles(math.rad(-0), math.rad(10), math.rad(-110)), 0.1)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5+0.1*math.sin(sine/30), 0.055*math.cos(sine/20)) * angles(math.rad(-0), math.rad(-10), math.rad(-105)), 0.1)
		end
		bass:Stop()
		meme:Stop()
		joyemoji.Rate = 0
		LIT.Rate = 0
		ok.Rate = 0
		toast.Rate = 0
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
		hum.WalkSpeed = 16
	end

	function HELP()
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://307972876"
		CreateSound("1123321019", hed, 10, 1)
		for i = 0,15,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		CreateSound("198462271", hed, 10, 1)
		for i = 0,8,0.1 do
			Character.Head.face.Texture = "rbxassetid://341497730"
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		for i = 0,8,0.1 do
			Character.Head.face.Texture = "rbxassetid://341497730"
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(60), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		CreateSound("948494432", hed, 10, 1)
		for i = 0,7.5,0.1 do
			Character.Head.face.Texture = "rbxassetid://249062487"
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(60), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		CreateSound("1542642349", hed, 10, 1)
		for i = 0,10,0.1 do
			Character.Head.face.Texture = "rbxassetid://270636807"
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		CreateSound("269597232", hed, 10, 1)
		for i = 0,6,0.1 do
			Character.Head.face.Texture = "rbxassetid://265057155"
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-0.7, -0.01 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-0.9, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function Choose()
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://374187112"
		CreateSound("130784263", hed, 10, 1)
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(110), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(110), Rad(0), Rad(0)), 0.1)
		end
		for i = 0,5,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(35), Rad(0), Rad(-10)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(35), Rad(0), Rad(10)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function slap()
		attack = true
		hum.WalkSpeed = 10
		CreateSound("146163534", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://293603561"
		owner.Character.Humanoid:TakeDamage(7)
		CameraEnshaking(1, 2)
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(115 + 4), Rad(45), Rad(50)), 0.1)
		end
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
		hum.WalkSpeed = 16
	end

	function MYSPAGHETTTTTTT() --ow
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("1282149571", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://1329282756"
		owner.Character.Humanoid:TakeDamage(10)
		CameraEnshaking(1, 2.2)
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(5)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(115 + 4), Rad(45), Rad(50)), 0.1)
		end
		for i = 0,5,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(110), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(110), Rad(0), Rad(0)), 0.1)
		end
		for i = 0,6,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(35), Rad(0), Rad(-10)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(35), Rad(0), Rad(10)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end


	function dead()
		attack = true
		hum.WalkSpeed = 0.20
		CreateSound("137225991", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://297512410"
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(90), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(180), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(270), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(90), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(180), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(270), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		for i = 0,1.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(140)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-140)), 0.1)
		end
		Character.Head.face.Texture = "rbxassetid://273309187"
		for i = 0,9,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -2.59 + 0.1) * angles(Rad(-90), Rad(90), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(30)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-30)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function hap() --much hap
		attack = true
		hum.WalkSpeed = 0.10
		CreateSound("363808674", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://315792941"
		for i = 0,12,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(180)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-0)), 0.1)
		end
		CreateSound("233168827", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://335761015"
		for i = 0,10,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(180)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-0)), 0.1)
		end
		CreateSound("363808674", hed, 10, 1)
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function HAAAAA() --KONO POWA
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://305068389"
		chargeup.Pitch = 1
		for i = 0,7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 1 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(-0)), 0.1)
		end
		Character.Head.face.Texture = "rbxassetid://313921371"
		chargeup:play()
		for i = 0,30,0.1 do
			swait()
			CameraEnshaking(1, 2)
			chargeup.Parent = hed
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(15), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(-0)), 0.1)
		end
		chargeup:stop()
		chargeup.Pitch = 1.1
		chargeup.TimePosition = 1
		chargeup:play()
		Character.Head.face.Texture = "rbxassetid://304942859"
		for i, v in pairs(c:children()) do
			if v.ClassName == "Part" then
				local tra = trazx:clone()
				tra.Parent = v
				tra.LightEmission = 1
				tra.Color = ColorSequence.new(Color3.new(0, 0.6666666666666666, 1))
				tra.Rate = 15
				tra.Rotation = NumberRange.new(-5, 5)
				tra.Lifetime = NumberRange.new(1.5, 2)
				tra.Size = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0.1, 0),
					NumberSequenceKeypoint.new(1, 0, 0)
				})
				tra.Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1, 0),
					NumberSequenceKeypoint.new(0.135, 0, 0),
					NumberSequenceKeypoint.new(0.875, 0, 0),
					NumberSequenceKeypoint.new(1, 1, 0)
				})
				tra.Speed = NumberRange.new(0.5)
				tra.VelocitySpread = 360
				tra.VelocityInheritance = 0.5
				tra.ZOffset = 2
				tra.Acceleration = Vector3.new(0, 2.5, 0)
			end
		end
		local tra = trazx:clone()
		tra.Parent = c.HumanoidRootPart
		tra.Texture = "rbxassetid://347730682"
		tra.LightEmission = 0.8
		tra.Color = ColorSequence.new(Color3.new(0, 0.6666666666666666, 1))
		tra.Rate = 250
		tra.Rotation = NumberRange.new(-5, 5)
		tra.Lifetime = NumberRange.new(0.75)
		tra.Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 4.81, 0.875),
			NumberSequenceKeypoint.new(1, 2.13, 0.875)
		})
		tra.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1, 0),
			NumberSequenceKeypoint.new(0.0399, 0.85, 0),
			NumberSequenceKeypoint.new(0.394, 0.9, 0),
			NumberSequenceKeypoint.new(0.699, 1, 0),
			NumberSequenceKeypoint.new(1, 1, 0)
		})
		tra.Speed = NumberRange.new(15)
		tra.VelocitySpread = 360
		tra.VelocityInheritance = 0.5
		tra.ZOffset = 3.5
		tra.Acceleration = Vector3.new(0, 25, 0)
		for i = 0,35,0.1 do
			swait()
			ohno.Parent = hed
			CameraEnshaking(1, 3)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(60), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(-0)), 0.1)
		end
		chargeup:stop()
		chargeup.Pitch = 1.3
		chargeup.TimePosition = 1
		chargeup:play()
		tra:Destroy()
		tra:Destroy()
		Character.Head.face.Texture = "rbxassetid://280233855"
		local tra = trazx:clone()
		tra.Parent = c.HumanoidRootPart
		tra.Texture = "rbxassetid://347730682"
		tra.LightEmission = 0.8
		tra.Color = ColorSequence.new(Color3.new(1, 0, 0))
		tra.Rate = 250
		tra.Rotation = NumberRange.new(-5, 5)
		tra.Lifetime = NumberRange.new(0.3)
		tra.Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 8, 0.875),
			NumberSequenceKeypoint.new(1, 10, 0.875)
		})
		tra.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1, 0),
			NumberSequenceKeypoint.new(0.0399, 0.531, 0),
			NumberSequenceKeypoint.new(0.394, 0.906, 0),
			NumberSequenceKeypoint.new(0.699, 1, 0),
			NumberSequenceKeypoint.new(1, 1, 0)
		})
		for i = 0,32,0.1 do
			swait()
			CameraEnshaking(1, 5)
			chargeup.Parent = hed
			owner.Character.Humanoid:TakeDamage(0.12)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-65), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.4, 0.0000000005 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(150), Rad(0), Rad(-0)), 0.1)
		end
		chargeup:stop()
		CreateSound("681582832", hed, 10, 1)
		owner.Character:BreakJoints()
		local S = Instance.new("Explosion",workspace)    
		S.Position = tors.Position
		S.BlastPressure = 9
		S.BlastRadius = 30
		S.ExplosionType = 0
		attack = false
		hum.WalkSpeed = 16
		Character.Head.face.Texture = "rbxassetid://295197013"
		tra:Destroy()
		CameraEnshaking(4, 30)
		error("WARNING, TO MUCH ENERGY.")
	end

	function NEN()
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("230292011", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://705269463"
		for i = 0,4,0.1 do
			swait()
			CameraEnshaking(1, 3)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-90), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function FLYSKYHIGH()
		attack = true
		timetofly = false
		hum.WalkSpeed = 0.05
		Character.Head.face.Texture = "rbxassetid://705269463"
		Cause_Im_having_a_good_time_having_a_good_time:Play()
		Cause_Im_having_a_good_time_having_a_good_time.TimePosition = 35.3
		Humanoid.JumpPower = 0
		for i = 0,300,0.1 do --thatsalongtime
			swait()
			CameraEnshaking(1, 7)
			HitboxFunction(ll.CFrame, 0.01, 1, 1, 1, 7, 75, 500, 100, "Knockdown")
			Cause_Im_having_a_good_time_having_a_good_time.Parent = hed
			root.Velocity = root.CFrame.lookVector * 225
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0-255.45*i), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0-255.45*i)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0-255.45*i)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-75), Rad(0), Rad(0)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-75), Rad(0), Rad(0)), 0.1)
		end
		Cause_Im_having_a_good_time_having_a_good_time:Stop()
		attack = false
		Humanoid.JumpPower = 50
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
		wait(45)
		timetofly = true
		warn("You can FLY SKY HIGH Now! Go Nuts!") --please dont go nuts
	end


	function highnoon()
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("495316660", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://155195214"
		CameraEnshaking(2, 4)
		local Blobby = Instance.new("Part", char)
		Blobby.Name = "Blob"
		Blobby.CanCollide = false
		Blobby.BrickColor = BrickColor.new("Really black")
		Blobby.Transparency = 0
		Blobby.Material = "Plastic"
		Blobby.Size = Vector3.new(1, 1, 2)
		Blobby.TopSurface = Enum.SurfaceType.Smooth
		Blobby.BottomSurface = Enum.SurfaceType.Smooth

		local Weld = Instance.new("Weld", Blobby)
		Weld.Part0 = ra
		Weld.Part1 = Blobby
		Weld.C1 = CFrame.new(0, -.4, -1.6) *angles(Rad(180), Rad(0), Rad(180))
		Weld.C0 = CFrame.Angles(math.rad(-90),0,0)

		local M2 = Instance.new("SpecialMesh")
		M2.Parent = Blobby
		M2.MeshId = "http://www.roblox.com/asset/?id=432256490"
		M2.TextureId = "http://www.roblox.com/asset/?id=432256526"
		M2.Scale = Vector3.new(.002, .002, .002)
		for i = 0,7.75,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30), Rad(0), Rad(0)), 0.2)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.2)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.2)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-.6), Rad(180)), 0.2)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-45), Rad(-.6), Rad(136 - 4.5 * Sin(sine / 20))), 0.2)
		end
		for i = 0,16.5,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30), Rad(0), Rad(0)), 0.2)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.2)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.2)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-.6), Rad(90)), 0.2)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-45), Rad(-.6), Rad(136 - 4.5 * Sin(sine / 20))), 0.2)
		end
		Blobby.Transparency = 1
		Blobby:Destroy()
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function somuchcancerwhy() --o no
		attack = true
		hum.WalkSpeed = 0.10
		Character.Head.face.Texture = "rbxassetid://315074049"
		local A = math.random(1,13)
		if A == 1 then
			ohno.SoundId = "rbxassetid://295810519"
			ohno.TimePosition = 1
		end
		if A == 2 then
			ohno.SoundId = "rbxassetid://488472970"
			ohno.TimePosition = 2
		end
		if A == 3 then
			ohno.SoundId = "rbxassetid://917045199"
			ohno.TimePosition = 3
		end
		if A == 4 then
			ohno.SoundId = "rbxassetid://324205173"
			ohno.TimePosition = 1
		end
		if A == 5 then
			ohno.SoundId = "rbxassetid://376134741"
			ohno.TimePosition = 8
		end
		if A == 6 then
			ohno.SoundId = "rbxassetid://164147183"
			ohno.TimePosition = 0
		end
		if A == 7 then
			ohno.SoundId = "rbxassetid://825526716"
			ohno.TimePosition = 1
		end
		if A == 8 then
			ohno.SoundId = "rbxassetid://185460366"
			ohno.TimePosition = 0
		end
		if A == 9 then
			ohno.SoundId = "rbxassetid://273319633"
			ohno.TimePosition = 1
		end
		if A == 10 then
			ohno.SoundId = "rbxassetid://506212392"
			ohno.TimePosition = 2
		end
		if A == 11 then
			ohno.SoundId = "rbxassetid://708297448"
			ohno.TimePosition = 4
		end
		if A == 12 then
			ohno.SoundId = "rbxassetid://497199103"
			ohno.TimePosition = 9
		end
		if A == 13 then
			ohno.SoundId = "rbxassetid://152833989"
			ohno.TimePosition = 1
		end
		ohno:Play()
		for i = 0,100,0.1 do
			swait()
			CameraEnshaking(2, 3)
			ohno.Parent = hed
			char.Torso.Neck.C0 = char.Torso.Neck.C0 * CFrame.Angles(math.random(-10,10),math.random(-10,10),math.random(-10,10))
		end
		attack = false
		ohno:Stop()
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function WRY() --WRYYYYYYY
		attack = true
		hum.WalkSpeed = 0.30
		CreateSound("794081034", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://396389196"
		for i = 0,2,0.1 do
			swait()
			CameraEnshaking(1, 2)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(140), Rad(60)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-140), Rad(-60)), 0.1)
		end
		for i = 0,14.7,0.1 do
			swait()
			CameraEnshaking(1, 3)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 1, -1 + 0.1) * angles(Rad(-75), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(65), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-70)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(70)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(40)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(-0), Rad(-40)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function BOI()
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("390901873", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://282463320"
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(50), Rad(90)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-50), Rad(-90)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(140), Rad(60)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-140), Rad(-60)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function WhatHuh()
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("130766865", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://276732672"
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		for i = 0,6.7,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(-26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		for i = 0,8.1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		for i = 0,1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(40), Rad(-26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		for i = 0,1,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(40), Rad(26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(-26), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function NothingPersonal()
		if mouse.Target.Parent ~= char and mouse.Target.Parent.Parent ~= char and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
			local HITBODY = mouse.Target.Parent
			local TORS = HITBODY:FindFirstChild("Torso") or HITBODY:FindFirstChild("UpperTorso")
			local HEAD = HITBODY:FindFirstChild("Head")
			local HUMAN = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
			if TORS ~= nil and HUMAN ~= nil then
				attack = true
				root.CFrame = TORS.CFrame * CFrame.new(-1,0,3)
				TORS.Anchored = true
				hum.WalkSpeed = 0
				Character.Head.face.Texture = "rbxassetid://40770311"
				CreateSound("1255922819", hed, 10, 1)
				CameraEnshaking(2, 4)
			end
			wait(3.5)
			for i = 0,9,0.1 do
				swait()
				for i = 1,2 do
					HitboxFunction(ll.CFrame, 0.01, 1, 1, 1, 7, 1, 10, 53, "Knockdown")
					CameraEnshaking(1, 7)
					Effects.Sphere.Create(BrickColor.new("Persimmon"), TORS.CFrame*CFrame.new(math.random(-200,200)/100,math.random(-300,200)/100,math.random(-100,100)/100), 1, 1, 1, 15, 15, 15, 0.2)
				end
			end
			wait(.5)
			TORS.Anchored = false
			attack = false
			Character.Head.face.Texture = "rbxassetid://620619801"
			hum.WalkSpeed = 16
		end
	end

	function VeryMuchWorrying()
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://111523405"
		CreateSound("1395854043", hed, 10, 1)
		for i = 0,14,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-145)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(145)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function Ashes() --Straight from... Whatever it was called.
		attack = true
		hum.WalkSpeed = 1.01
		Character.Head.face.Texture = "rbxassetid://360687027"
		CreateSound("290084602", tors, 10, 1)
		for i = 0,6.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-30), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(145)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(-145)), 0.1)
		end
		for i = 0,6.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(20)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-20)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-30), Rad(0), Rad(15)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-30), Rad(0), Rad(-15)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function AnotherOne() --WhAT ANOTHER ONE
		attack = true
		hum.WalkSpeed = 1.01
		local icri = CreateSound("1205111204", hed, 10, 1)
		swait(165)
		local FRAME = tors.CFrame
		repeat
			swait()
			Character.Head.face.Texture = "rbxassetid://582931093"
			CameraEnshaking(1, 10)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-90)), 0.1)
			tors.CFrame = FRAME * CF(0,1,0)
			swait()
			tors.CFrame = FRAME
		until icri.Playing == false
		Character.Head.face.Texture = "rbxassetid://620619801"
		attack = false
		hum.WalkSpeed = 16
	end

	function Dance()
		attack = true
		hum.WalkSpeed = 1.01
		CreateSound("838766490", hed, 10, 1)
		Character.Head.face.Texture = "rbxassetid://258591579"
		for i = 0,2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,4,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(-0), Rad(-180)), 0.1)
		end
		for i = 0,3,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-30)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(50), Rad(0), Rad(180)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-50), Rad(-0), Rad(-180)), 0.1)
		end
		attack = false
		Character.Head.face.Texture = "rbxassetid://620619801"
		hum.WalkSpeed = 16
	end

	function kyu_will_break_your_neck_asdf_longest_function_name_ever_xd()
		attack = true
		Character.Head.face.Texture = "rbxassetid://266304560"
		for i = 0,6,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.2 * Cos(sine / 20)) * angles(Rad(170), Rad(0), Rad(-15)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.3, 0.8 + 0.05 * Sin(sine / 30), -0.025 * Cos(sine / 20)) * angles(Rad(140), Rad(0), Rad(15)), 0.1)
		end
		CreateSound("1093102664", hed, 10, 1)
		CameraEnshaking(3, 8)
		for i = 0,2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(5), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(10), Rad(40), Rad(0)), 0.4)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.2 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-40)), 0.4)
			LW.C0 = clerp(LW.C0, CF(-1.3, 0.8 + 0.05 * Sin(sine / 30), -0.025 * Cos(sine / 20)) * angles(Rad(40), Rad(0), Rad(40)), 0.4)
		end
		Character.Head.face.Texture = "rbxassetid://30128383"
		hum.MaxHealth = 0
		ragdoll(char)
		CreateSound("534269232", hed, 5, 1)
		error("Seems like you just died.")
	end

	MoreTaunts = false
	mouse.KeyDown:connect(function(key)
		if attack == false then
			if MoreTaunts == false then
				if key == 'q' then
					GEtOuT()
				elseif key == 'e' then
					GEtOuT2()
				elseif key == 'x' then
					OBJECTION()
				elseif key == 'n' then
					BOI()
				elseif key == 'u' then
					Victory()
				elseif key == '3' then
					hap()
				elseif key == '6' then
					Flight()
				elseif key == '9' and timetofly then
					FLYSKYHIGH()
				elseif key == '9' then
					local A = math.random(1,10)
					if A == 1 then
						warn ("This has a Cooldown, Please wait. :>")
					end
					if A == 2 then
						warn ("You can't Fly All day, you know.")
					end
					if A == 3 then
						warn ("Calm down there.")
					end
					if A == 4 then
						warn ("Take a Break.")
					end
					if A == 5 then
						warn ("*Elevator Music plays in the backround*")
					end
					if A == 6 then
						warn ("I know, You want to FLY SKY HIGH, but wait a little bit.")
					end
					if A == 7 then
						warn ("Can you wait a LITTLE Longer?")
					end
					if A == 8 then
						warn ("Like a tiger defying the laws of gravity...")
					end
					if A == 9 then
						warn ("DON'T STOP ME NNNNNOOOOOOOOWWWW")
					end
					if A == 10 then
						warn ("Oh, I'm burnin' through the sky, Yeah!")
					end
				elseif key == 'k' then
					Hello()
				elseif key == '5' then
					HAAAAA()
				elseif key == '4' then
					Dance()
				elseif key == '1' then
					HELP()
				elseif key == '2' then
					dead()
				elseif key == 'j' then
					WhatHuh()
				elseif key == 'l' then
					ShutTheHellUp()
				elseif key == 'c' then
					Choose()
				elseif key == 'r' then
					MYSPAGHETTTTTTT()
				elseif key == 't' then
					SpinMeDad()
				elseif key == 'y' then
					EndMySufferingV2()
				elseif key == 'f' then
					NEN()
				elseif key == 'z' then
					NothingPersonal()
				elseif key == '7' then
					somuchcancerwhy()
				elseif key == '8' then
					highnoon()
				elseif key == 'v' then
					VeryMuchWorrying()
				elseif key == 'b' then
					Ashes()
				elseif key == 'p' then
					kyu_will_break_your_neck_asdf_longest_function_name_ever_xd()
				elseif key == 'g' then
					AnotherOne()
				elseif key == 'h' then
					slap()
				elseif key == 'm' then
					WRY()
				end
			end
		end
	end)

	-------------------------------------------------------
	--End Attacks N Stuff--
	-------------------------------------------------------




	while jumping do
		Humanoid.Jump = true
		wait(0.9)
	end




	-------------------------------------------------------
	--Start Animations--
	-------------------------------------------------------
	local equipped = false
	local idle = 0
	local change = 1
	local val = 0
	local toim = 0
	local idleanim = 0.4
	hum.Animator.Parent = nil
	while true do
		swait()
		sine = sine + change
		local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
		local velderp = root.Velocity.y
		hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
		if equipped == true or equipped == false then
			if attack == false then
				idle = idle + 1
			else
				idle = 0
			end
			if 1 < root.Velocity.y and hitfloor == nil then
				Anim = "Jump"
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.3)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-40), Rad(0), Rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(Rad(30), Rad(0), Rad(20)), 0.3)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(Rad(-20), Rad(0), Rad(-30)), 0.3)
					LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -0.3) * LHCF * angles(Rad(-5), Rad(0), Rad(20)), 0.15)
					RH.C0 = clerp(RH.C0, CF(1, -1, 0.3) * angles(Rad(0), Rad(90), Rad(-20)), 0.3)
				end
			elseif -1 > root.Velocity.y and hitfloor == nil then
				Anim = "Fall"
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-5), Rad(0), Rad(0)), 0.3)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(40), Rad(0), Rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(Rad(30), Rad(0), Rad(20)), 0.3)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(Rad(-20), Rad(0), Rad(-30)), 0.3)
					LH.C0=clerp(LH.C0, CF(-1,-.4-0.1 * Cos(sine / 20), -.6) * LHCF * angles(Rad(-5), Rad(-0), Rad(20)), 0.15)
					RH.C0=clerp(RH.C0, CF(1,-.3-0.1 * Cos(sine / 20), -.6) * angles(Rad(0), Rad(90), Rad(-20)), .3)
				end
			elseif torvel < 1 and hitfloor ~= nil then
				Anim = "Idle"
				change = 1
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
					RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
					LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(30 * Cos(sine / 20)), Rad(0), Rad(5)), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(30 * Cos(sine / 20)), Rad(0), Rad(-5)), 0.1)
				end
			elseif tors.Velocity.magnitude < 50 and hitfloor ~= nil then
				Anim = "Walk"
				change = 1
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(9-2.5 * Cos(sine / 3.5)), Rad(0), Rad(10 * Cos(sine / 7))), 0.15)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(1, -0.925 - 0.5 * math.cos(sine / 7) / 2, 0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 - 35 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90 - 2 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 + 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.925 + 0.5 * math.cos(sine / 7) / 2, -0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 35 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90 - 2 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 - 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(70) * Cos(sine / 7) , Rad(0), Rad(5)), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-70) * Cos(sine / 7) , Rad(0),	Rad(-5)), 0.1)
				end
			end
		end
		if 0 < #Effects then
			for e = 1, #Effects do
				if Effects[e] ~= nil then
					local Thing = Effects[e]
					if Thing ~= nil then
						local Part = Thing[1]
						local Mode = Thing[2]
						local Delay = Thing[3]
						local IncX = Thing[4]
						local IncY = Thing[5]
						local IncZ = Thing[6]
						if 1 >= Thing[1].Transparency then
							if Thing[2] == "Block1" then
								Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
								local Mesh = Thing[1].Mesh
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Block2" then
								Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
								local Mesh = Thing[7]
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Block3" then
								Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
								local Mesh = Thing[7]
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Cylinder" then
								local Mesh = Thing[1].Mesh
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Blood" then
								local Mesh = Thing[7]
								Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Elec" then
								local Mesh = Thing[1].Mesh
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Disappear" then
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Shatter" then
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
								Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
								Thing[6] = Thing[6] + Thing[5]
							end
						else
							Part.Parent = nil
							table.remove(Effects, e)
						end
					end
				end
			end
		end
	end
	-------------------------------------------------------
	--End Animations And Script--
	-------------------------------------------------------

	--cool beans boibiparti
end)

RTXGraphics.Name = "RTXGraphics"
RTXGraphics.Parent = Frame
RTXGraphics.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RTXGraphics.BorderSizePixel = 3
RTXGraphics.Position = UDim2.new(0.529262543, 0, 0.233147144, 0)
RTXGraphics.Size = UDim2.new(0, 139, 0, 31)
RTXGraphics.Font = Enum.Font.SourceSansBold
RTXGraphics.Text = "RTX Graphics"
RTXGraphics.TextColor3 = Color3.fromRGB(0, 0, 0)
RTXGraphics.TextSize = 14.000
Smug.MouseButton1Down:connect(function()
local a = game.Lighting
a.Ambient = Color3.fromRGB(33, 33, 33)
a.Brightness = 6.67
a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
a.EnvironmentDiffuseScale = 0.105
a.EnvironmentSpecularScale = 0.522
a.GlobalShadows = true
a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
a.ShadowSoftness = 0.04
a.GeographicLatitude = -15.525
a.ExposureCompensation = 0.75
local b = Instance.new("BloomEffect", a)
b.Enabled = true
b.Intensity = 0.04
b.Size = 1900
b.Threshold = 0.915
local c = Instance.new("ColorCorrectionEffect", a)
c.Brightness = 0.176
c.Contrast = 0.39
c.Enabled = true
c.Saturation = 0.2
c.TintColor = Color3.fromRGB(217, 145, 57)
if getgenv().mode == "Summer" then
	c.TintColor = Color3.fromRGB(255, 220, 148)
elseif getgenv().mode == "Autumn" then
	c.TintColor = Color3.fromRGB(217, 145, 57)
else
	warn("No mode selected!")
	print("Please select a mode")
	b:Destroy()
	c:Destroy()
end
local d = Instance.new("DepthOfFieldEffect", a)
d.Enabled = true
d.FarIntensity = 0.077
d.FocusDistance = 21.54
d.InFocusRadius = 20.77
d.NearIntensity = 0.277
local e = Instance.new("ColorCorrectionEffect", a)
e.Brightness = 0
e.Contrast = -0.07
e.Saturation = 0
e.Enabled = true
e.TintColor = Color3.fromRGB(255, 247, 239)
local e2 = Instance.new("ColorCorrectionEffect", a)
e2.Brightness = 0.2
e2.Contrast = 0.45
e2.Saturation = -0.1
e2.Enabled = true
e2.TintColor = Color3.fromRGB(255, 255, 255)
local s = Instance.new("SunRaysEffect", a)
s.Enabled = true
s.Intensity = 0.01
s.Spread = 0.146
end)
print("RTX Graphics loaded \n created by Rawget#0001")
end)

Smug.Name = "Smug"
Smug.Parent = Frame
Smug.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Smug.BorderSizePixel = 3
Smug.Position = UDim2.new(0.529262543, 0, 0.522857487, 0)
Smug.Size = UDim2.new(0, 139, 0, 31)
Smug.Font = Enum.Font.SourceSansBold
Smug.Text = "Smug"
Smug.TextColor3 = Color3.fromRGB(0, 0, 0)
Smug.TextSize = 14.000
Smug.MouseButton1Down:connect(function()
	ArtificialHB = Instance.new("BindableEvent", script)
	ArtificialHB.Name = "Heartbeat"
	script:WaitForChild("Heartbeat")

	Player = game:GetService("Players").LocalPlayer
	PlayerGui = Player.PlayerGui
	Cam = workspace.CurrentCamera
	Backpack = Player.Backpack
	Character = Player.Character
	Humanoid = Character.Humanoid
	Mouse = Player:GetMouse()
	RootPart = Character["HumanoidRootPart"]
	Torso = Character["Torso"]
	Head = Character["Head"]
	RightArm = Character["Right Arm"]
	LeftArm = Character["Left Arm"]
	RightLeg = Character["Right Leg"]
	LeftLeg = Character["Left Leg"]
	RootJoint = RootPart["RootJoint"]
	Neck = Torso["Neck"]
	RightShoulder = Torso["Right Shoulder"]
	LeftShoulder = Torso["Left Shoulder"]
	RightHip = Torso["Right Hip"]
	LeftHip = Torso["Left Hip"]

	Character = Player.Character
	Humanoid = Character.Humanoid

	local BODY = {}
	for _, c in pairs(Character:GetDescendants()) do
		if c:IsA("BasePart") and c.Name ~= "Handle" then
			if c ~= RootPart and c ~= Torso and c ~= Head and c ~= RightArm and c ~= LeftArm and c ~= RightLeg and c ~= LeftLeg then
				c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
			end
			table.insert(BODY,{c,c.Parent,c.Material,c.Color,c.Transparency,c.Size,c.Name})
		elseif c:IsA("JointInstance") then
			table.insert(BODY,{c,c.Parent,nil,nil,nil,nil,nil})
		end
	end

	function refit()
		Character.Parent = workspace
		for e = 1, #BODY do
			if BODY[e] ~= nil then
				local STUFF = BODY[e]
				local PART = STUFF[1]
				local PARENT = STUFF[2]
				local MATERIAL = STUFF[3]
				local COLOR = STUFF[4]
				local TRANSPARENCY = STUFF[5]
				--local SIZE = STUFF[6]
				local NAME = STUFF[7]
				if PART.ClassName == "Part" and PART ~= RootPart then
					PART.Material = MATERIAL
					PART.Transparency = TRANSPARENCY
					PART.Name = NAME
				end
				if PART.Parent ~= PARENT then
					Humanoid:remove()
					PART.Parent = PARENT
					Humanoid = IT("Humanoid",Character)
				end
			end
		end
	end

	Humanoid.Died:connect(function()
		refit()
	end)

	Player = game:GetService("Players").LocalPlayer
	PlayerGui = Player.PlayerGui
	Cam = workspace.CurrentCamera
	Backpack = Player.Backpack
	Character = Player.Character
	Humanoid = Character.Humanoid
	Mouse = Player:GetMouse()
	RootPart = Character["HumanoidRootPart"]
	Torso = Character["Torso"]
	Head = Character["Head"]
	RightArm = Character["Right Arm"]
	LeftArm = Character["Left Arm"]
	RightLeg = Character["Right Leg"]
	LeftLeg = Character["Left Leg"]
	RootJoint = RootPart["RootJoint"]
	Neck = Torso["Neck"]
	RightShoulder = Torso["Right Shoulder"]
	LeftShoulder = Torso["Left Shoulder"]
	RightHip = Torso["Right Hip"]
	LeftHip = Torso["Left Hip"]
	local sick = Instance.new("Sound",Torso)

	IT = Instance.new
	CF = CFrame.new
	VT = Vector3.new
	RAD = math.rad
	C3 = Color3.new
	UD2 = UDim2.new
	BRICKC = BrickColor.new
	ANGLES = CFrame.Angles
	EULER = CFrame.fromEulerAnglesXYZ
	COS = math.cos
	ACOS = math.acos
	SIN = math.sin
	ASIN = math.asin
	ABS = math.abs
	MRANDOM = math.random
	FLOOR = math.floor

	local Speed = 0.1
	AnimationSpeed=.8
	SmoothTime=2

	function swait(num)
		if num==0 or num==nil then
			--if Stagger.Value==false or Stun.Value<=100 then
			--Player.PlayerGui.Pacemaker.Heartbeat.Event:wait()
			script.Heartbeat.Event:wait()
			--end
		else
			for i=0,num do
				--Player.PlayerGui.Pacemaker.Heartbeat.Event:wait()
				script.Heartbeat.Event:wait()
--[[if Stagger.Value==true or Stun.Value>=StunT.Value then
break
end]]
			end
		end
	end
	script:WaitForChild("Heartbeat")

	frame = 1/60
	tf = 0
	allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame2 or greater.
	tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
	lastframe = tick()
	script.Heartbeat:Fire() --ayy lmao

	game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
		tf = tf + s
		if tf >= frame then
			if allowframeloss then
				script.Heartbeat:Fire()
				lastframe=tick()
			else
				----print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame(math.floor(t/frame))))
				for i=1, math.floor(tf/frame) do
					script.Heartbeat:Fire()
				end
				lastframe=tick()
			end
			if tossremainder then
				tf = 0
			else
				tf = tf - frame * math.floor(tf/frame)
			end
		end
	end)

	Anim = {  	Properties = {
		Looping = true,
		Priority = Enum.AnimationPriority.Action
	},
	Keyframes = {
		[0] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.Angles(math.rad(-10.657), 0, 0),
					["Left Leg"] = {
						CFrame = CFrame.Angles(math.rad(-5.214), math.rad(-0.859), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(169.767)),
					},
					["Left Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(-169.767)),
					},
					["Right Leg"] = {
						CFrame = CFrame.Angles(math.rad(-4.526), math.rad(0.745), math.rad(-9.454)),
					},
				},
			},
		},
		[0.017] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.003) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.003, 0) * CFrame.Angles(math.rad(-5.271), math.rad(-0.745), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.002, -0.001, -0.001) * CFrame.Angles(math.rad(0.63), math.rad(-0.458), math.rad(169.08)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.01, -0.001) * CFrame.Angles(math.rad(-0.573), math.rad(-0.516), math.rad(-169.137)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.003, 0.001) * CFrame.Angles(math.rad(-4.526), math.rad(0.516), math.rad(-9.454)),
					},
				},
			},
		},
		[0.033] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.014) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.516)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.011, 0.012, 0.002) * CFrame.Angles(math.rad(-5.386), math.rad(-0.286), math.rad(9.339)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.008, -0.003, -0.004) * CFrame.Angles(math.rad(2.464), math.rad(-1.948), math.rad(167.132)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.012, -0.039, -0.004) * CFrame.Angles(math.rad(-2.349), math.rad(-2.005), math.rad(-167.189)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.004, 0.013, 0.003) * CFrame.Angles(math.rad(-4.641), math.rad(-0.229), math.rad(-9.454)),
					},
				},
			},
		},
		[0.05] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.006, -0.031) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-1.089)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.024, 0.027, 0.004) * CFrame.Angles(math.rad(-5.615), math.rad(0.458), math.rad(9.225)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.016, -0.005, -0.008) * CFrame.Angles(math.rad(5.386), math.rad(-4.469), math.rad(163.866)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.026, -0.084, -0.006) * CFrame.Angles(math.rad(-5.214), math.rad(-4.641), math.rad(-164.095)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.009, 0.028, 0.006) * CFrame.Angles(math.rad(-4.756), math.rad(-1.432), math.rad(-9.454)),
					},
				},
			},
		},
		[0.067] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.011, -0.056) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-1.948)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.043, 0.047, 0.007) * CFrame.Angles(math.rad(-5.959), math.rad(1.432), math.rad(9.11)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.021, -0.004, -0.011) * CFrame.Angles(math.rad(9.282), math.rad(-8.308), math.rad(159.569)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.044, -0.139, -0.004) * CFrame.Angles(math.rad(-8.938), math.rad(-8.537), math.rad(-159.913)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.016, 0.05, 0.01) * CFrame.Angles(math.rad(-4.927), math.rad(-3.094), math.rad(-9.511)),
					},
				},
			},
		},
		[0.083] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.016, -0.087) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-3.094)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.068, 0.074, 0.01) * CFrame.Angles(math.rad(-6.36), math.rad(2.75), math.rad(8.881)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.018, -0.001, -0.007) * CFrame.Angles(math.rad(13.923), math.rad(-13.694), math.rad(154.355)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.065, -0.196, 0.005) * CFrame.Angles(math.rad(-13.35), math.rad(-13.98), math.rad(-154.928)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.025, 0.078, 0.015) * CFrame.Angles(math.rad(-5.157), math.rad(-5.271), math.rad(-9.568)),
					},
				},
			},
		},
		[0.1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.024, -0.126) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-4.412)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.098, 0.106, 0.014) * CFrame.Angles(math.rad(-6.875), math.rad(4.354), math.rad(8.709)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.001, 0.007, 0.007) * CFrame.Angles(math.rad(19.022), math.rad(-20.684), math.rad(148.396)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.081, -0.245, 0.024) * CFrame.Angles(math.rad(-18.277), math.rad(-21.028), math.rad(-149.198)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.035, 0.113, 0.019) * CFrame.Angles(math.rad(-5.443), math.rad(-7.964), math.rad(-9.626)),
					},
				},
			},
		},
		[0.117] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.032, -0.171) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-6.016)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.134, 0.144, 0.017) * CFrame.Angles(math.rad(-7.448), math.rad(6.188), math.rad(8.48)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.038, 0.015, 0.042) * CFrame.Angles(math.rad(24.408), math.rad(-29.622), math.rad(141.864)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.083, -0.274, 0.052) * CFrame.Angles(math.rad(-23.377), math.rad(-29.908), math.rad(-142.838)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.048, 0.153, 0.024) * CFrame.Angles(math.rad(-5.787), math.rad(-11.115), math.rad(-9.74)),
					},
				},
			},
		},
		[0.133] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.042, -0.224) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-7.907)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.175, 0.187, 0.02) * CFrame.Angles(math.rad(-8.136), math.rad(8.365), math.rad(8.251)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.105, 0.017, 0.108) * CFrame.Angles(math.rad(29.679), math.rad(-40.451), math.rad(134.702)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.058, -0.272, 0.085) * CFrame.Angles(math.rad(-28.419), math.rad(-40.737), math.rad(-135.963)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.063, 0.2, 0.027) * CFrame.Angles(math.rad(-6.188), math.rad(-14.725), math.rad(-9.912)),
					},
				},
			},
		},
		[0.15] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.052, -0.276) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-9.74)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.217, 0.23, 0.023) * CFrame.Angles(math.rad(-8.824), math.rad(10.542), math.rad(8.021)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.189, 0.002, 0.201) * CFrame.Angles(math.rad(33.919), math.rad(-51.738), math.rad(127.598)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.002, -0.239, 0.108) * CFrame.Angles(math.rad(-32.429), math.rad(-51.967), math.rad(-129.03)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.078, 0.246, 0.028) * CFrame.Angles(math.rad(-6.589), math.rad(-18.335), math.rad(-10.084)),
					},
				},
			},
		},
		[0.167] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.061, -0.321) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-11.345)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.254, 0.267, 0.024) * CFrame.Angles(math.rad(-9.397), math.rad(12.433), math.rad(7.85)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.272, -0.028, 0.302) * CFrame.Angles(math.rad(36.383), math.rad(-61.765), math.rad(120.837)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.086, -0.191, 0.115) * CFrame.Angles(math.rad(-34.721), math.rad(-61.937), math.rad(-122.441)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.091, 0.287, 0.027) * CFrame.Angles(math.rad(-6.99), math.rad(-21.486), math.rad(-10.256)),
					},
				},
			},
		},
		[0.183] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.068, -0.36) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-12.662)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.285, 0.298, 0.024) * CFrame.Angles(math.rad(-9.855), math.rad(14.037), math.rad(7.735)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.344, -0.071, 0.402) * CFrame.Angles(math.rad(36.612), math.rad(-70.359), math.rad(113.618)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.179, -0.141, 0.106) * CFrame.Angles(math.rad(-34.836), math.rad(-70.417), math.rad(-115.279)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.103, 0.321, 0.025) * CFrame.Angles(math.rad(-7.334), math.rad(-24.122), math.rad(-10.485)),
					},
				},
			},
		},
		[0.2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.074, -0.391) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-13.808)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.311, 0.324, 0.025) * CFrame.Angles(math.rad(-10.256), math.rad(15.355), math.rad(7.678)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.403, -0.117, 0.492) * CFrame.Angles(math.rad(33.289), math.rad(-77.292), math.rad(104.278)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.27, -0.097, 0.086) * CFrame.Angles(math.rad(-31.398), math.rad(-77.292), math.rad(-106.112)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.112, 0.348, 0.023) * CFrame.Angles(math.rad(-7.62), math.rad(-26.299), math.rad(-10.6)),
					},
				},
			},
		},
		[0.217] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.078, -0.416) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-14.668)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.331, 0.343, 0.024) * CFrame.Angles(math.rad(-10.6), math.rad(16.387), math.rad(7.563)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.448, -0.162, 0.566) * CFrame.Angles(math.rad(22.746), math.rad(-82.449), math.rad(89.152)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.35, -0.064, 0.063) * CFrame.Angles(math.rad(-20.97), math.rad(-82.391), math.rad(-91.272)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.12, 0.37, 0.021) * CFrame.Angles(math.rad(-7.85), math.rad(-28.018), math.rad(-10.772)),
					},
				},
			},
		},
		[0.233] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.082, -0.433) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.298)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.345, 0.357, 0.024) * CFrame.Angles(math.rad(-10.829), math.rad(17.131), math.rad(7.563)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.479, -0.198, 0.621) * CFrame.Angles(math.rad(-1.833), math.rad(-85.428), math.rad(61.306)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.412, -0.04, 0.042) * CFrame.Angles(math.rad(2.922), math.rad(-85.371), math.rad(-64.229)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.126, 0.385, 0.02) * CFrame.Angles(math.rad(-8.021), math.rad(-29.221), math.rad(-10.886)),
					},
				},
			},
		},
		[0.25] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.084, -0.444) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.642)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.354, 0.366, 0.024) * CFrame.Angles(math.rad(-10.943), math.rad(17.533), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.496, -0.221, 0.655) * CFrame.Angles(math.rad(-32.716), math.rad(-86.23), math.rad(28.476)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.451, -0.026, 0.027) * CFrame.Angles(math.rad(32.888), math.rad(-86.173), math.rad(-32.372)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.129, 0.394, 0.018) * CFrame.Angles(math.rad(-8.136), math.rad(-29.908), math.rad(-10.943)),
					},
				},
			},
		},
		[0.267] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.084, -0.447) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.756)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.357, 0.368, 0.024) * CFrame.Angles(math.rad(-11.001), math.rad(17.704), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.502, -0.229, 0.666) * CFrame.Angles(math.rad(-44.462), math.rad(-86.173), math.rad(16.1)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.464, -0.022, 0.022) * CFrame.Angles(math.rad(44.462), math.rad(-86.173), math.rad(-20.225)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.13, 0.397, 0.018) * CFrame.Angles(math.rad(-8.193), math.rad(-30.138), math.rad(-10.943)),
					},
				},
			},
		},
		[0.283] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.083, -0.443) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.584)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.353, 0.365, 0.024) * CFrame.Angles(math.rad(-10.943), math.rad(17.475), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.495, -0.219, 0.651) * CFrame.Angles(math.rad(-29.164), math.rad(-86.173), math.rad(32.258)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.447, -0.028, 0.029) * CFrame.Angles(math.rad(29.335), math.rad(-86.173), math.rad(-36.096)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.129, 0.393, 0.018) * CFrame.Angles(math.rad(-8.136), math.rad(-29.851), math.rad(-10.943)),
					},
				},
			},
		},
		[0.3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.081, -0.429) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.126)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.342, 0.354, 0.024) * CFrame.Angles(math.rad(-10.772), math.rad(16.902), math.rad(7.563)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.471, -0.189, 0.608) * CFrame.Angles(math.rad(6.875), math.rad(-84.855), math.rad(70.818)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.397, -0.046, 0.048) * CFrame.Angles(math.rad(-5.5), math.rad(-84.74), math.rad(-73.396)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.124, 0.381, 0.02) * CFrame.Angles(math.rad(-7.964), math.rad(-28.877), math.rad(-10.829)),
					},
				},
			},
		},
		[0.317] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.076, -0.406) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-14.324)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.323, 0.336, 0.024) * CFrame.Angles(math.rad(-10.485), math.rad(15.986), math.rad(7.62)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.431, -0.143, 0.537) * CFrame.Angles(math.rad(28.533), math.rad(-80.501), math.rad(96.773)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.318, -0.077, 0.073) * CFrame.Angles(math.rad(-26.643), math.rad(-80.443), math.rad(-98.721)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.117, 0.361, 0.022) * CFrame.Angles(math.rad(-7.735), math.rad(-27.33), math.rad(-10.714)),
					},
				},
			},
		},
		[0.333] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.07, -0.374) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-13.178)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.297, 0.31, 0.025) * CFrame.Angles(math.rad(-10.027), math.rad(14.668), math.rad(7.678)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.371, -0.09, 0.443) * CFrame.Angles(math.rad(35.753), math.rad(-73.51), math.rad(110.008)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.219, -0.121, 0.098) * CFrame.Angles(math.rad(-33.919), math.rad(-73.568), math.rad(-111.784)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.107, 0.333, 0.025) * CFrame.Angles(math.rad(-7.448), math.rad(-25.153), math.rad(-10.542)),
					},
				},
			},
		},
		[0.35] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.063, -0.333) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-11.746)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.263, 0.277, 0.024) * CFrame.Angles(math.rad(-9.511), math.rad(12.949), math.rad(7.85)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.294, -0.039, 0.332) * CFrame.Angles(math.rad(36.669), math.rad(-64.4), math.rad(118.889)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.112, -0.176, 0.113) * CFrame.Angles(math.rad(-35.008), math.rad(-64.515), math.rad(-120.493)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.095, 0.297, 0.027) * CFrame.Angles(math.rad(-7.105), math.rad(-22.288), math.rad(-10.313)),
					},
				},
			},
		},
		[0.367] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.053, -0.283) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-9.969)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.223, 0.236, 0.023) * CFrame.Angles(math.rad(-8.881), math.rad(10.829), math.rad(8.021)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.201, -0.001, 0.215) * CFrame.Angles(math.rad(34.377), math.rad(-53.285), math.rad(126.624)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.013, -0.232, 0.11) * CFrame.Angles(math.rad(-32.888), math.rad(-53.514), math.rad(-128.056)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.08, 0.253, 0.028) * CFrame.Angles(math.rad(-6.646), math.rad(-18.793), math.rad(-10.141)),
					},
				},
			},
		},
		[0.383] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.042, -0.224) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-7.907)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.175, 0.187, 0.02) * CFrame.Angles(math.rad(-8.136), math.rad(8.365), math.rad(8.251)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.105, 0.017, 0.108) * CFrame.Angles(math.rad(29.679), math.rad(-40.451), math.rad(134.702)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.058, -0.272, 0.085) * CFrame.Angles(math.rad(-28.419), math.rad(-40.737), math.rad(-135.963)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.063, 0.2, 0.027) * CFrame.Angles(math.rad(-6.188), math.rad(-14.725), math.rad(-9.912)),
					},
				},
			},
		},
		[0.4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.031, -0.164) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-5.787)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.128, 0.138, 0.017) * CFrame.Angles(math.rad(-7.391), math.rad(5.901), math.rad(8.537)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.031, 0.014, 0.036) * CFrame.Angles(math.rad(23.606), math.rad(-28.19), math.rad(142.838)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.084, -0.271, 0.048) * CFrame.Angles(math.rad(-22.632), math.rad(-28.533), math.rad(-143.812)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.046, 0.147, 0.023) * CFrame.Angles(math.rad(-5.73), math.rad(-10.6), math.rad(-9.74)),
					},
				},
			},
		},
		[0.417] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.021, -0.114) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-4.011)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.089, 0.096, 0.013) * CFrame.Angles(math.rad(-6.704), math.rad(3.839), math.rad(8.766)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.008, 0.004, 0.001) * CFrame.Angles(math.rad(17.533), math.rad(-18.507), math.rad(150.172)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.077, -0.232, 0.018) * CFrame.Angles(math.rad(-16.845), math.rad(-18.85), math.rad(-150.86)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.032, 0.102, 0.018) * CFrame.Angles(math.rad(-5.329), math.rad(-7.162), math.rad(-9.626)),
					},
				},
			},
		},
		[0.433] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.014, -0.073) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-2.578)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.057, 0.062, 0.009) * CFrame.Angles(math.rad(-6.188), math.rad(2.177), math.rad(8.995)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.021, -0.003, -0.01) * CFrame.Angles(math.rad(11.86), math.rad(-11.173), math.rad(156.704)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.056, -0.172, 0.001) * CFrame.Angles(math.rad(-11.402), math.rad(-11.459), math.rad(-157.162)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.021, 0.066, 0.013) * CFrame.Angles(math.rad(-5.042), math.rad(-4.297), math.rad(-9.511)),
					},
				},
			},
		},
		[0.45] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.008, -0.041) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-1.432)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.032, 0.035, 0.005) * CFrame.Angles(math.rad(-5.73), math.rad(0.802), math.rad(9.167)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.019, -0.005, -0.01) * CFrame.Angles(math.rad(6.933), math.rad(-5.959), math.rad(162.147)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.033, -0.106, -0.005) * CFrame.Angles(math.rad(-6.704), math.rad(-6.131), math.rad(-162.434)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.012, 0.037, 0.008) * CFrame.Angles(math.rad(-4.813), math.rad(-2.063), math.rad(-9.511)),
					},
				},
			},
		},
		[0.467] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.018) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.63)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.014, 0.016, 0.002) * CFrame.Angles(math.rad(-5.443), math.rad(-0.115), math.rad(9.339)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.01, -0.003, -0.005) * CFrame.Angles(math.rad(3.209), math.rad(-2.521), math.rad(166.33)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.015, -0.05, -0.004) * CFrame.Angles(math.rad(-3.094), math.rad(-2.636), math.rad(-166.444)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.005, 0.016, 0.004) * CFrame.Angles(math.rad(-4.641), math.rad(-0.516), math.rad(-9.454)),
					},
				},
			},
		},
		[0.483] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.005) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.172)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.004, 0.004, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.688), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.003, -0.001, -0.002) * CFrame.Angles(math.rad(0.802), math.rad(-0.63), math.rad(168.908)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.004, -0.013, -0.001) * CFrame.Angles(math.rad(-0.802), math.rad(-0.63), math.rad(-168.908)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.004, 0.001) * CFrame.Angles(math.rad(-4.526), math.rad(0.458), math.rad(-9.454)),
					},
				},
			},
		},
		[0.5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.Angles(math.rad(-10.657), 0, 0),
					["Left Leg"] = {
						CFrame = CFrame.Angles(math.rad(-5.214), math.rad(-0.859), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(169.767)),
					},
					["Left Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(-169.767)),
					},
					["Right Leg"] = {
						CFrame = CFrame.Angles(math.rad(-4.526), math.rad(0.745), math.rad(-9.454)),
					},
				},
			},
		},
		[0.517] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.004) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.004, 0.001) * CFrame.Angles(math.rad(-5.214), math.rad(-0.63), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.004, -0.01, -0.002) * CFrame.Angles(math.rad(-0.573), math.rad(0.573), math.rad(169.137)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.001, -0.001) * CFrame.Angles(math.rad(0.63), math.rad(0.516), math.rad(-169.08)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.004, 0) * CFrame.Angles(math.rad(-4.584), math.rad(0.63), math.rad(-9.397)),
					},
				},
			},
		},
		[0.533] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.017) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.401)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.011, 0.017, 0.004) * CFrame.Angles(math.rad(-5.329), math.rad(-0.057), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.015, -0.04, -0.005) * CFrame.Angles(math.rad(-2.235), math.rad(2.235), math.rad(167.189)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.01, -0.004, -0.005) * CFrame.Angles(math.rad(2.406), math.rad(2.12), math.rad(-167.017)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.006, 0.017, 0) * CFrame.Angles(math.rad(-4.87), math.rad(0.172), math.rad(-9.397)),
					},
				},
			},
		},
		[0.55] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.007, -0.037) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.917)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.024, 0.039, 0.009) * CFrame.Angles(math.rad(-5.5), math.rad(1.031), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.034, -0.086, -0.009) * CFrame.Angles(math.rad(-4.927), math.rad(5.157), math.rad(164.095)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.018, -0.008, -0.01) * CFrame.Angles(math.rad(5.271), math.rad(4.927), math.rad(-163.751)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.014, 0.038, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.573), math.rad(-9.282)),
					},
				},
			},
		},
		[0.567] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.012, -0.066) * CFrame.Angles(math.rad(-10.657), 0, math.rad(1.604)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.042, 0.069, 0.015) * CFrame.Angles(math.rad(-5.73), math.rad(2.464), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.058, -0.142, -0.01) * CFrame.Angles(math.rad(-8.422), math.rad(9.454), math.rad(159.913)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.025, -0.011, -0.014) * CFrame.Angles(math.rad(9.053), math.rad(9.11), math.rad(-159.34)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.024, 0.068, 0.001) * CFrame.Angles(math.rad(-5.901), math.rad(-1.662), math.rad(-9.225)),
					},
				},
			},
		},
		[0.583] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.02, -0.104) * CFrame.Angles(math.rad(-10.657), 0, math.rad(2.521)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.066, 0.108, 0.023) * CFrame.Angles(math.rad(-6.073), math.rad(4.354), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.085, -0.201, -0.003) * CFrame.Angles(math.rad(-12.548), math.rad(15.298), math.rad(154.87)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.024, -0.012, -0.013) * CFrame.Angles(math.rad(13.465), math.rad(14.897), math.rad(-154.011)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.038, 0.106, 0.001) * CFrame.Angles(math.rad(-6.646), math.rad(-3.037), math.rad(-9.11)),
					},
				},
			},
		},
		[0.6] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.028, -0.149) * CFrame.Angles(math.rad(-10.657), 0, math.rad(3.61)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.095, 0.155, 0.032) * CFrame.Angles(math.rad(-6.474), math.rad(6.646), math.rad(9.511)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.107, -0.252, 0.014) * CFrame.Angles(math.rad(-16.96), math.rad(22.918), math.rad(149.084)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.009, -0.011, 0) * CFrame.Angles(math.rad(18.335), math.rad(22.46), math.rad(-147.88)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.055, 0.152, 0.001) * CFrame.Angles(math.rad(-7.62), math.rad(-4.641), math.rad(-8.995)),
					},
				},
			},
		},
		[0.617] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.038, -0.203) * CFrame.Angles(math.rad(-10.657), 0, math.rad(4.927)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.13, 0.211, 0.041) * CFrame.Angles(math.rad(-6.933), math.rad(9.397), math.rad(9.568)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.115, -0.284, 0.041) * CFrame.Angles(math.rad(-21.429), math.rad(32.372), math.rad(142.609)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.028, -0.011, 0.033) * CFrame.Angles(math.rad(23.205), math.rad(31.914), math.rad(-141.12)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.076, 0.206, 0) * CFrame.Angles(math.rad(-8.709), math.rad(-6.646), math.rad(-8.881)),
					},
				},
			},
		},
		[0.633] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.05, -0.265) * CFrame.Angles(math.rad(-10.657), 0, math.rad(6.474)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.17, 0.276, 0.05) * CFrame.Angles(math.rad(-7.448), math.rad(12.49), math.rad(9.683)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.093, -0.285, 0.073) * CFrame.Angles(math.rad(-25.554), math.rad(43.774), math.rad(135.218)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.092, -0.021, 0.096) * CFrame.Angles(math.rad(27.788), math.rad(43.43), math.rad(-133.442)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.101, 0.268, -0.003) * CFrame.Angles(math.rad(-10.027), math.rad(-8.881), math.rad(-8.824)),
					},
				},
			},
		},
		[0.65] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.062, -0.328) * CFrame.Angles(math.rad(-10.657), 0, math.rad(7.964)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.21, 0.34, 0.058) * CFrame.Angles(math.rad(-8.021), math.rad(15.642), math.rad(9.798)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.032, -0.256, 0.097) * CFrame.Angles(math.rad(-28.132), math.rad(55.52), math.rad(127.311)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.173, -0.049, 0.188) * CFrame.Angles(math.rad(30.882), math.rad(55.29), math.rad(-125.363)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.127, 0.329, -0.006) * CFrame.Angles(math.rad(-11.287), math.rad(-11.173), math.rad(-8.824)),
					},
				},
			},
		},
		[0.667] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.072, -0.381) * CFrame.Angles(math.rad(-10.657), 0, math.rad(9.282)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.246, 0.395, 0.064) * CFrame.Angles(math.rad(-8.48), math.rad(18.335), math.rad(9.912)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.054, -0.213, 0.104) * CFrame.Angles(math.rad(-28.075), math.rad(65.776), math.rad(118.717)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.251, -0.092, 0.289) * CFrame.Angles(math.rad(31.341), math.rad(65.718), math.rad(-116.712)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.15, 0.382, -0.01) * CFrame.Angles(math.rad(-12.433), math.rad(-13.121), math.rad(-8.881)),
					},
				},
			},
		},
		[0.683] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.08, -0.427) * CFrame.Angles(math.rad(-10.657), 0, math.rad(10.371)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.276, 0.442, 0.068) * CFrame.Angles(math.rad(-8.938), math.rad(20.626), math.rad(10.084)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.152, -0.168, 0.094) * CFrame.Angles(math.rad(-23.606), math.rad(74.313), math.rad(107.258)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.318, -0.146, 0.388) * CFrame.Angles(math.rad(27.387), math.rad(74.427), math.rad(-105.31)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.17, 0.426, -0.014) * CFrame.Angles(math.rad(-13.407), math.rad(-14.782), math.rad(-8.938)),
					},
				},
			},
		},
		[0.7] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.087, -0.464) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.287)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.301, 0.48, 0.071) * CFrame.Angles(math.rad(-9.282), math.rad(22.517), math.rad(10.199)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.247, -0.13, 0.074) * CFrame.Angles(math.rad(-9.167), math.rad(80.787), math.rad(87.204)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.371, -0.202, 0.478) * CFrame.Angles(math.rad(13.235), math.rad(81.074), math.rad(-85.199)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.186, 0.462, -0.017) * CFrame.Angles(math.rad(-14.209), math.rad(-16.157), math.rad(-8.995)),
					},
				},
			},
		},
		[0.717] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.093, -0.493) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.975)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.32, 0.51, 0.072) * CFrame.Angles(math.rad(-9.568), math.rad(24.007), math.rad(10.313)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.331, -0.1, 0.05) * CFrame.Angles(math.rad(25.955), math.rad(84.053), math.rad(47.727)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.411, -0.254, 0.551) * CFrame.Angles(math.rad(-24.064), math.rad(84.397), math.rad(-43.316)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.199, 0.489, -0.02) * CFrame.Angles(math.rad(-14.84), math.rad(-17.189), math.rad(-9.053)),
					},
				},
			},
		},
		[0.733] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.097, -0.514) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.49)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.335, 0.531, 0.073) * CFrame.Angles(math.rad(-9.798), math.rad(25.038), math.rad(10.428)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.395, -0.08, 0.028) * CFrame.Angles(math.rad(63.312), math.rad(83.652), math.rad(7.277)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.437, -0.296, 0.605) * CFrame.Angles(math.rad(-63.713), math.rad(83.824), math.rad(-0.401)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.209, 0.509, -0.022) * CFrame.Angles(math.rad(-15.241), math.rad(-17.934), math.rad(-9.11)),
					},
				},
			},
		},
		[0.75] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.099, -0.527) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.777)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.343, 0.544, 0.074) * CFrame.Angles(math.rad(-9.912), math.rad(25.669), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.436, -0.069, 0.013) * CFrame.Angles(math.rad(79.24), math.rad(82.277), math.rad(-10.542)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.452, -0.323, 0.638) * CFrame.Angles(math.rad(-79.469), math.rad(82.334), math.rad(17.303)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.214, 0.521, -0.024) * CFrame.Angles(math.rad(-15.527), math.rad(-18.392), math.rad(-9.167)),
					},
				},
			},
		},
		[0.767] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.1, -0.531) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.892)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.346, 0.548, 0.074) * CFrame.Angles(math.rad(-9.969), math.rad(25.84), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.449, -0.065, 0.008) * CFrame.Angles(math.rad(83.193), math.rad(81.704), math.rad(-15.126)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.457, -0.332, 0.649) * CFrame.Angles(math.rad(-83.193), math.rad(81.704), math.rad(21.772)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.216, 0.525, -0.024) * CFrame.Angles(math.rad(-15.642), math.rad(-18.564), math.rad(-9.167)),
					},
				},
			},
		},
		[0.783] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.099, -0.525) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.777)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.342, 0.542, 0.074) * CFrame.Angles(math.rad(-9.912), math.rad(25.554), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.431, -0.07, 0.015) * CFrame.Angles(math.rad(77.922), math.rad(82.449), math.rad(-8.995)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.451, -0.32, 0.635) * CFrame.Angles(math.rad(-78.151), math.rad(82.506), math.rad(15.814)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.214, 0.519, -0.023) * CFrame.Angles(math.rad(-15.527), math.rad(-18.335), math.rad(-9.167)),
					},
				},
			},
		},
		[0.8] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.096, -0.509) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.376)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.331, 0.526, 0.073) * CFrame.Angles(math.rad(-9.74), math.rad(24.752), math.rad(10.371)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.379, -0.085, 0.034) * CFrame.Angles(math.rad(54.889), math.rad(83.996), math.rad(16.444)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.431, -0.285, 0.592) * CFrame.Angles(math.rad(-55.061), math.rad(84.225), math.rad(-9.798)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.206, 0.504, -0.022) * CFrame.Angles(math.rad(-15.126), math.rad(-17.762), math.rad(-9.11)),
					},
				},
			},
		},
		[0.817] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.091, -0.482) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.746)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.313, 0.498, 0.072) * CFrame.Angles(math.rad(-9.454), math.rad(23.377), math.rad(10.256)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.297, -0.112, 0.061) * CFrame.Angles(math.rad(8.079), math.rad(83.136), math.rad(67.323)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.396, -0.233, 0.522) * CFrame.Angles(math.rad(-4.756), math.rad(83.48), math.rad(-64.4)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.194, 0.478, -0.019) * CFrame.Angles(math.rad(-14.553), math.rad(-16.788), math.rad(-9.053)),
					},
				},
			},
		},
		[0.833] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.084, -0.444) * CFrame.Angles(math.rad(-10.657), 0, math.rad(10.772)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.287, 0.459, 0.069) * CFrame.Angles(math.rad(-9.11), math.rad(21.486), math.rad(10.141)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.193, -0.151, 0.087) * CFrame.Angles(math.rad(-19.251), math.rad(77.407), math.rad(100.268)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.343, -0.17, 0.428) * CFrame.Angles(math.rad(23.205), math.rad(77.578), math.rad(-98.434)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.177, 0.442, -0.015) * CFrame.Angles(math.rad(-13.751), math.rad(-15.413), math.rad(-8.938)),
					},
				},
			},
		},
		[0.85] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.074, -0.395) * CFrame.Angles(math.rad(-10.657), 0, math.rad(9.626)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.255, 0.41, 0.065) * CFrame.Angles(math.rad(-8.652), math.rad(19.022), math.rad(9.969)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.081, -0.2, 0.102) * CFrame.Angles(math.rad(-27.387), math.rad(68.411), math.rad(115.852)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.271, -0.107, 0.318) * CFrame.Angles(math.rad(30.768), math.rad(68.411), math.rad(-113.847)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.156, 0.395, -0.011) * CFrame.Angles(math.rad(-12.72), math.rad(-13.636), math.rad(-8.881)),
					},
				},
			},
		},
		[0.867] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.063, -0.336) * CFrame.Angles(math.rad(-10.657), 0, math.rad(8.136)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.216, 0.348, 0.059) * CFrame.Angles(math.rad(-8.079), math.rad(16.043), math.rad(9.798)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.021, -0.251, 0.099) * CFrame.Angles(math.rad(-28.304), math.rad(57.067), math.rad(126.165)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.185, -0.054, 0.202) * CFrame.Angles(math.rad(31.112), math.rad(56.837), math.rad(-124.16)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.13, 0.337, -0.007) * CFrame.Angles(math.rad(-11.459), math.rad(-11.459), math.rad(-8.824)),
					},
				},
			},
		},
		[0.883] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.05, -0.265) * CFrame.Angles(math.rad(-10.657), 0, math.rad(6.474)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.17, 0.276, 0.05) * CFrame.Angles(math.rad(-7.448), math.rad(12.49), math.rad(9.683)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.093, -0.285, 0.073) * CFrame.Angles(math.rad(-25.554), math.rad(43.774), math.rad(135.218)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.092, -0.021, 0.096) * CFrame.Angles(math.rad(27.788), math.rad(43.43), math.rad(-133.442)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.101, 0.268, -0.003) * CFrame.Angles(math.rad(-10.027), math.rad(-8.881), math.rad(-8.824)),
					},
				},
			},
		},
		[0.9] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.037, -0.195) * CFrame.Angles(math.rad(-10.657), 0, math.rad(4.756)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.124, 0.203, 0.04) * CFrame.Angles(math.rad(-6.818), math.rad(8.938), math.rad(9.568)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.116, -0.281, 0.036) * CFrame.Angles(math.rad(-20.798), math.rad(30.94), math.rad(143.526)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.021, -0.011, 0.026) * CFrame.Angles(math.rad(22.517), math.rad(30.481), math.rad(-142.094)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.073, 0.198, 0) * CFrame.Angles(math.rad(-8.537), math.rad(-6.303), math.rad(-8.881)),
					},
				},
			},
		},
		[0.917] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.026, -0.135) * CFrame.Angles(math.rad(-10.657), 0, math.rad(3.266)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.086, 0.141, 0.029) * CFrame.Angles(math.rad(-6.36), math.rad(5.959), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.102, -0.239, 0.008) * CFrame.Angles(math.rad(-15.699), math.rad(20.569), math.rad(150.802)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.015, -0.012, -0.005) * CFrame.Angles(math.rad(16.902), math.rad(20.111), math.rad(-149.714)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.05, 0.138, 0.001) * CFrame.Angles(math.rad(-7.334), math.rad(-4.183), math.rad(-8.995)),
					},
				},
			},
		},
		[0.933] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.016, -0.087) * CFrame.Angles(math.rad(-10.657), 0, math.rad(2.12)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.055, 0.09, 0.02) * CFrame.Angles(math.rad(-5.901), math.rad(3.495), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.073, -0.176, -0.007) * CFrame.Angles(math.rad(-10.714), math.rad(12.605), math.rad(157.105)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.026, -0.012, -0.014) * CFrame.Angles(math.rad(11.516), math.rad(12.204), math.rad(-156.417)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.032, 0.089, 0.001) * CFrame.Angles(math.rad(-6.303), math.rad(-2.406), math.rad(-9.167)),
					},
				},
			},
		},
		[0.95] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.009, -0.049) * CFrame.Angles(math.rad(-10.657), 0, math.rad(1.203)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.031, 0.051, 0.011) * CFrame.Angles(math.rad(-5.615), math.rad(1.604), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.044, -0.109, -0.01) * CFrame.Angles(math.rad(-6.36), math.rad(6.818), math.rad(162.434)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.022, -0.01, -0.012) * CFrame.Angles(math.rad(6.818), math.rad(6.532), math.rad(-161.975)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.018, 0.05, 0.001) * CFrame.Angles(math.rad(-5.558), math.rad(-1.031), math.rad(-9.282)),
					},
				},
			},
		},
		[0.967] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.004, -0.022) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.516)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.014, 0.023, 0.005) * CFrame.Angles(math.rad(-5.386), math.rad(0.229), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.02, -0.052, -0.007) * CFrame.Angles(math.rad(-2.922), math.rad(2.922), math.rad(166.387)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.012, -0.006, -0.007) * CFrame.Angles(math.rad(3.151), math.rad(2.807), math.rad(-166.215)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.008, 0.022, 0.001) * CFrame.Angles(math.rad(-4.985), math.rad(-0.057), math.rad(-9.339)),
					},
				},
			},
		},
		[0.983] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.005) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.006, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.573), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.005, -0.013, -0.002) * CFrame.Angles(math.rad(-0.745), math.rad(0.688), math.rad(168.908)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.002, -0.002) * CFrame.Angles(math.rad(0.802), math.rad(0.688), math.rad(-168.851)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.002, 0.006, 0) * CFrame.Angles(math.rad(-4.641), math.rad(0.573), math.rad(-9.397)),
					},
				},
			},
		},
		[1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.Angles(math.rad(-10.657), 0, 0),
					["Left Leg"] = {
						CFrame = CFrame.Angles(math.rad(-5.214), math.rad(-0.859), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(169.767)),
					},
					["Left Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(-169.767)),
					},
					["Right Leg"] = {
						CFrame = CFrame.Angles(math.rad(-4.526), math.rad(0.745), math.rad(-9.454)),
					},
				},
			},
		},
		[1.017] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.004) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.003, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.688), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.003, -0.001, -0.001) * CFrame.Angles(math.rad(0.688), math.rad(-0.516), math.rad(169.023)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.011, -0.001) * CFrame.Angles(math.rad(-0.688), math.rad(-0.573), math.rad(-169.023)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.004, 0.001) * CFrame.Angles(math.rad(-4.526), math.rad(0.458), math.rad(-9.454)),
					},
				},
			},
		},
		[1.033] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.016) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.573)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.012, 0.014, 0.002) * CFrame.Angles(math.rad(-5.443), math.rad(-0.229), math.rad(9.339)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.009, -0.003, -0.005) * CFrame.Angles(math.rad(2.807), math.rad(-2.177), math.rad(166.731)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.013, -0.044, -0.004) * CFrame.Angles(math.rad(-2.693), math.rad(-2.292), math.rad(-166.845)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.005, 0.014, 0.003) * CFrame.Angles(math.rad(-4.641), math.rad(-0.344), math.rad(-9.454)),
					},
				},
			},
		},
		[1.05] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.007, -0.036) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-1.261)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.028, 0.03, 0.004) * CFrame.Angles(math.rad(-5.672), math.rad(0.63), math.rad(9.225)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.017, -0.005, -0.009) * CFrame.Angles(math.rad(6.131), math.rad(-5.157), math.rad(163.121)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.029, -0.094, -0.006) * CFrame.Angles(math.rad(-5.844), math.rad(-5.271), math.rad(-163.35)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.01, 0.032, 0.007) * CFrame.Angles(math.rad(-4.756), math.rad(-1.719), math.rad(-9.454)),
					},
				},
			},
		},
		[1.067] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.012, -0.064) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-2.235)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.049, 0.054, 0.008) * CFrame.Angles(math.rad(-6.073), math.rad(1.776), math.rad(9.053)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.021, -0.004, -0.011) * CFrame.Angles(math.rad(10.485), math.rad(-9.626), math.rad(158.251)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.05, -0.154, -0.002) * CFrame.Angles(math.rad(-10.027), math.rad(-9.855), math.rad(-158.652)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.018, 0.057, 0.011) * CFrame.Angles(math.rad(-4.985), math.rad(-3.667), math.rad(-9.511)),
					},
				},
			},
		},
		[1.083] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.019, -0.099) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-3.495)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.077, 0.084, 0.011) * CFrame.Angles(math.rad(-6.532), math.rad(3.266), math.rad(8.824)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.014, 0.001, -0.004) * CFrame.Angles(math.rad(15.584), math.rad(-15.814), math.rad(152.464)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.071, -0.213, 0.011) * CFrame.Angles(math.rad(-14.954), math.rad(-16.1), math.rad(-153.094)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.028, 0.089, 0.016) * CFrame.Angles(math.rad(-5.214), math.rad(-6.131), math.rad(-9.568)),
					},
				},
			},
		},
		[1.1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.027, -0.143) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-5.042)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.112, 0.121, 0.015) * CFrame.Angles(math.rad(-7.105), math.rad(5.042), math.rad(8.594)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.012, 0.01, 0.018) * CFrame.Angles(math.rad(21.142), math.rad(-24.007), math.rad(145.875)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.084, -0.259, 0.034) * CFrame.Angles(math.rad(-20.283), math.rad(-24.351), math.rad(-146.734)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.04, 0.128, 0.021) * CFrame.Angles(math.rad(-5.558), math.rad(-9.167), math.rad(-9.683)),
					},
				},
			},
		},
		[1.117] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.037, -0.195) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-6.875)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.153, 0.164, 0.019) * CFrame.Angles(math.rad(-7.792), math.rad(7.219), math.rad(8.365)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.065, 0.017, 0.068) * CFrame.Angles(math.rad(26.872), math.rad(-34.435), math.rad(138.598)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.076, -0.277, 0.067) * CFrame.Angles(math.rad(-25.783), math.rad(-34.721), math.rad(-139.744)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.055, 0.174, 0.025) * CFrame.Angles(math.rad(-5.959), math.rad(-12.72), math.rad(-9.798)),
					},
				},
			},
		},
		[1.133] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.048, -0.252) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-8.881)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.198, 0.211, 0.022) * CFrame.Angles(math.rad(-8.48), math.rad(9.568), math.rad(8.136)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.149, 0.011, 0.155) * CFrame.Angles(math.rad(32.143), math.rad(-46.639), math.rad(130.806)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.03, -0.257, 0.099) * CFrame.Angles(math.rad(-30.768), math.rad(-46.868), math.rad(-132.181)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.071, 0.226, 0.027) * CFrame.Angles(math.rad(-6.417), math.rad(-16.73), math.rad(-10.027)),
					},
				},
			},
		},
		[1.15] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.057, -0.304) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-10.714)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.24, 0.253, 0.024) * CFrame.Angles(math.rad(-9.167), math.rad(11.746), math.rad(7.907)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.24, -0.014, 0.261) * CFrame.Angles(math.rad(35.581), math.rad(-57.926), math.rad(123.53)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.05, -0.211, 0.114) * CFrame.Angles(math.rad(-34.034), math.rad(-58.098), math.rad(-125.077)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.086, 0.271, 0.027) * CFrame.Angles(math.rad(-6.818), math.rad(-20.283), math.rad(-10.199)),
					},
				},
			},
		},
		[1.167] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.066, -0.348) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-12.261)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.275, 0.289, 0.024) * CFrame.Angles(math.rad(-9.74), math.rad(13.579), math.rad(7.792)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.322, -0.056, 0.37) * CFrame.Angles(math.rad(36.841), math.rad(-67.666), math.rad(116.139)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.147, -0.157, 0.11) * CFrame.Angles(math.rad(-35.065), math.rad(-67.781), math.rad(-117.8)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.099, 0.31, 0.026) * CFrame.Angles(math.rad(-7.219), math.rad(-23.319), math.rad(-10.428)),
					},
				},
			},
		},
		[1.183] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.072, -0.384) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-13.522)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.305, 0.318, 0.025) * CFrame.Angles(math.rad(-10.199), math.rad(15.011), math.rad(7.678)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.389, -0.105, 0.47) * CFrame.Angles(math.rad(34.664), math.rad(-75.63), math.rad(107.143)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.247, -0.108, 0.092) * CFrame.Angles(math.rad(-32.773), math.rad(-75.63), math.rad(-108.919)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.11, 0.341, 0.024) * CFrame.Angles(math.rad(-7.563), math.rad(-25.783), math.rad(-10.6)),
					},
				},
			},
		},
		[1.2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.077, -0.411) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-14.496)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.327, 0.34, 0.024) * CFrame.Angles(math.rad(-10.542), math.rad(16.215), math.rad(7.62)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.44, -0.153, 0.553) * CFrame.Angles(math.rad(25.726), math.rad(-81.589), math.rad(92.991)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.336, -0.07, 0.068) * CFrame.Angles(math.rad(-23.892), math.rad(-81.532), math.rad(-94.996)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.119, 0.366, 0.022) * CFrame.Angles(math.rad(-7.792), math.rad(-27.674), math.rad(-10.714)),
					},
				},
			},
		},
		[1.217] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.081, -0.431) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.183)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.344, 0.356, 0.024) * CFrame.Angles(math.rad(-10.772), math.rad(17.017), math.rad(7.563)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.475, -0.194, 0.615) * CFrame.Angles(math.rad(2.349), math.rad(-85.199), math.rad(65.89)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.405, -0.043, 0.045) * CFrame.Angles(math.rad(-1.146), math.rad(-85.142), math.rad(-68.64)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.125, 0.383, 0.02) * CFrame.Angles(math.rad(-8.021), math.rad(-29.049), math.rad(-10.829)),
					},
				},
			},
		},
		[1.233] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.083, -0.443) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.642)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.354, 0.365, 0.024) * CFrame.Angles(math.rad(-10.943), math.rad(17.533), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.496, -0.22, 0.653) * CFrame.Angles(math.rad(-31.112), math.rad(-86.23), math.rad(30.195)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.449, -0.027, 0.028) * CFrame.Angles(math.rad(31.283), math.rad(-86.173), math.rad(-34.091)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.129, 0.394, 0.018) * CFrame.Angles(math.rad(-8.136), math.rad(-29.908), math.rad(-10.943)),
					},
				},
			},
		},
		[1.25] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.084, -0.447) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.756)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.357, 0.368, 0.024) * CFrame.Angles(math.rad(-11.001), math.rad(17.704), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.502, -0.229, 0.666) * CFrame.Angles(math.rad(-44.462), math.rad(-86.173), math.rad(16.1)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.464, -0.022, 0.022) * CFrame.Angles(math.rad(44.462), math.rad(-86.173), math.rad(-20.225)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.13, 0.397, 0.018) * CFrame.Angles(math.rad(-8.193), math.rad(-30.138), math.rad(-10.943)),
					},
				},
			},
		},
		[1.267] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.083, -0.443) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.584)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.353, 0.365, 0.024) * CFrame.Angles(math.rad(-10.943), math.rad(17.475), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.495, -0.219, 0.651) * CFrame.Angles(math.rad(-29.164), math.rad(-86.173), math.rad(32.258)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.447, -0.028, 0.029) * CFrame.Angles(math.rad(29.335), math.rad(-86.173), math.rad(-36.096)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.129, 0.393, 0.018) * CFrame.Angles(math.rad(-8.136), math.rad(-29.851), math.rad(-10.943)),
					},
				},
			},
		},
		[1.283] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.081, -0.429) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.126)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.342, 0.354, 0.024) * CFrame.Angles(math.rad(-10.772), math.rad(16.902), math.rad(7.563)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.471, -0.189, 0.608) * CFrame.Angles(math.rad(6.875), math.rad(-84.855), math.rad(70.818)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.397, -0.046, 0.048) * CFrame.Angles(math.rad(-5.5), math.rad(-84.74), math.rad(-73.396)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.124, 0.381, 0.02) * CFrame.Angles(math.rad(-7.964), math.rad(-28.877), math.rad(-10.829)),
					},
				},
			},
		},
		[1.3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.076, -0.406) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-14.324)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.323, 0.336, 0.024) * CFrame.Angles(math.rad(-10.485), math.rad(15.986), math.rad(7.62)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.431, -0.143, 0.537) * CFrame.Angles(math.rad(28.533), math.rad(-80.501), math.rad(96.773)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.318, -0.077, 0.073) * CFrame.Angles(math.rad(-26.643), math.rad(-80.443), math.rad(-98.721)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.117, 0.361, 0.022) * CFrame.Angles(math.rad(-7.735), math.rad(-27.33), math.rad(-10.714)),
					},
				},
			},
		},
		[1.317] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.07, -0.374) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-13.178)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.297, 0.31, 0.025) * CFrame.Angles(math.rad(-10.027), math.rad(14.668), math.rad(7.678)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.371, -0.09, 0.443) * CFrame.Angles(math.rad(35.753), math.rad(-73.51), math.rad(110.008)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.219, -0.121, 0.098) * CFrame.Angles(math.rad(-33.919), math.rad(-73.568), math.rad(-111.784)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.107, 0.333, 0.025) * CFrame.Angles(math.rad(-7.448), math.rad(-25.153), math.rad(-10.542)),
					},
				},
			},
		},
		[1.333] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.063, -0.333) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-11.746)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.263, 0.277, 0.024) * CFrame.Angles(math.rad(-9.511), math.rad(12.949), math.rad(7.85)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.294, -0.039, 0.332) * CFrame.Angles(math.rad(36.669), math.rad(-64.4), math.rad(118.889)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.112, -0.176, 0.113) * CFrame.Angles(math.rad(-35.008), math.rad(-64.515), math.rad(-120.493)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.095, 0.297, 0.027) * CFrame.Angles(math.rad(-7.105), math.rad(-22.288), math.rad(-10.313)),
					},
				},
			},
		},
		[1.35] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.053, -0.283) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-9.969)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.223, 0.236, 0.023) * CFrame.Angles(math.rad(-8.881), math.rad(10.829), math.rad(8.021)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.201, -0.001, 0.215) * CFrame.Angles(math.rad(34.377), math.rad(-53.285), math.rad(126.624)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.013, -0.232, 0.11) * CFrame.Angles(math.rad(-32.888), math.rad(-53.514), math.rad(-128.056)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.08, 0.253, 0.028) * CFrame.Angles(math.rad(-6.646), math.rad(-18.793), math.rad(-10.141)),
					},
				},
			},
		},
		[1.367] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.042, -0.224) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-7.907)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.175, 0.187, 0.02) * CFrame.Angles(math.rad(-8.136), math.rad(8.365), math.rad(8.251)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.105, 0.017, 0.108) * CFrame.Angles(math.rad(29.679), math.rad(-40.451), math.rad(134.702)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.058, -0.272, 0.085) * CFrame.Angles(math.rad(-28.419), math.rad(-40.737), math.rad(-135.963)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.063, 0.2, 0.027) * CFrame.Angles(math.rad(-6.188), math.rad(-14.725), math.rad(-9.912)),
					},
				},
			},
		},
		[1.383] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.031, -0.164) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-5.787)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.128, 0.138, 0.017) * CFrame.Angles(math.rad(-7.391), math.rad(5.901), math.rad(8.537)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.031, 0.014, 0.036) * CFrame.Angles(math.rad(23.606), math.rad(-28.19), math.rad(142.838)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.084, -0.271, 0.048) * CFrame.Angles(math.rad(-22.632), math.rad(-28.533), math.rad(-143.812)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.046, 0.147, 0.023) * CFrame.Angles(math.rad(-5.73), math.rad(-10.6), math.rad(-9.74)),
					},
				},
			},
		},
		[1.4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.021, -0.114) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-4.011)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.089, 0.096, 0.013) * CFrame.Angles(math.rad(-6.704), math.rad(3.839), math.rad(8.766)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.008, 0.004, 0.001) * CFrame.Angles(math.rad(17.533), math.rad(-18.507), math.rad(150.172)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.077, -0.232, 0.018) * CFrame.Angles(math.rad(-16.845), math.rad(-18.85), math.rad(-150.86)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.032, 0.102, 0.018) * CFrame.Angles(math.rad(-5.329), math.rad(-7.162), math.rad(-9.626)),
					},
				},
			},
		},
		[1.417] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.014, -0.073) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-2.578)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.057, 0.062, 0.009) * CFrame.Angles(math.rad(-6.188), math.rad(2.177), math.rad(8.995)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.021, -0.003, -0.01) * CFrame.Angles(math.rad(11.86), math.rad(-11.173), math.rad(156.704)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.056, -0.172, 0.001) * CFrame.Angles(math.rad(-11.402), math.rad(-11.459), math.rad(-157.162)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.021, 0.066, 0.013) * CFrame.Angles(math.rad(-5.042), math.rad(-4.297), math.rad(-9.511)),
					},
				},
			},
		},
		[1.433] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.008, -0.041) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-1.432)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.032, 0.035, 0.005) * CFrame.Angles(math.rad(-5.73), math.rad(0.802), math.rad(9.167)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.019, -0.005, -0.01) * CFrame.Angles(math.rad(6.933), math.rad(-5.959), math.rad(162.147)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.033, -0.106, -0.005) * CFrame.Angles(math.rad(-6.704), math.rad(-6.131), math.rad(-162.434)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.012, 0.037, 0.008) * CFrame.Angles(math.rad(-4.813), math.rad(-2.063), math.rad(-9.511)),
					},
				},
			},
		},
		[1.45] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.018) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.63)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.014, 0.016, 0.002) * CFrame.Angles(math.rad(-5.443), math.rad(-0.115), math.rad(9.339)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.01, -0.003, -0.005) * CFrame.Angles(math.rad(3.209), math.rad(-2.521), math.rad(166.33)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.015, -0.05, -0.004) * CFrame.Angles(math.rad(-3.094), math.rad(-2.636), math.rad(-166.444)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.005, 0.016, 0.004) * CFrame.Angles(math.rad(-4.641), math.rad(-0.516), math.rad(-9.454)),
					},
				},
			},
		},
		[1.467] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.005) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.172)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.004, 0.004, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.688), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.003, -0.001, -0.002) * CFrame.Angles(math.rad(0.802), math.rad(-0.63), math.rad(168.908)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.004, -0.013, -0.001) * CFrame.Angles(math.rad(-0.802), math.rad(-0.63), math.rad(-168.908)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.004, 0.001) * CFrame.Angles(math.rad(-4.526), math.rad(0.458), math.rad(-9.454)),
					},
				},
			},
		},
		[1.483] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.Angles(math.rad(-10.657), 0, 0),
					["Left Leg"] = {
						CFrame = CFrame.Angles(math.rad(-5.214), math.rad(-0.859), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(169.767)),
					},
					["Left Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(-169.767)),
					},
					["Right Leg"] = {
						CFrame = CFrame.Angles(math.rad(-4.526), math.rad(0.745), math.rad(-9.454)),
					},
				},
			},
		},
		[1.5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.004) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.004, 0.001) * CFrame.Angles(math.rad(-5.214), math.rad(-0.63), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.004, -0.01, -0.002) * CFrame.Angles(math.rad(-0.573), math.rad(0.573), math.rad(169.137)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.001, -0.001) * CFrame.Angles(math.rad(0.63), math.rad(0.516), math.rad(-169.08)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.004, 0) * CFrame.Angles(math.rad(-4.584), math.rad(0.63), math.rad(-9.397)),
					},
				},
			},
		},
		[1.517] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.017) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.401)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.011, 0.017, 0.004) * CFrame.Angles(math.rad(-5.329), math.rad(-0.057), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.015, -0.04, -0.005) * CFrame.Angles(math.rad(-2.235), math.rad(2.235), math.rad(167.189)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.01, -0.004, -0.005) * CFrame.Angles(math.rad(2.406), math.rad(2.12), math.rad(-167.017)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.006, 0.017, 0) * CFrame.Angles(math.rad(-4.87), math.rad(0.172), math.rad(-9.397)),
					},
				},
			},
		},
		[1.533] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.007, -0.037) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.917)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.024, 0.039, 0.009) * CFrame.Angles(math.rad(-5.5), math.rad(1.031), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.034, -0.086, -0.009) * CFrame.Angles(math.rad(-4.927), math.rad(5.157), math.rad(164.095)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.018, -0.008, -0.01) * CFrame.Angles(math.rad(5.271), math.rad(4.927), math.rad(-163.751)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.014, 0.038, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.573), math.rad(-9.282)),
					},
				},
			},
		},
		[1.55] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.012, -0.066) * CFrame.Angles(math.rad(-10.657), 0, math.rad(1.604)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.042, 0.069, 0.015) * CFrame.Angles(math.rad(-5.73), math.rad(2.464), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.058, -0.142, -0.01) * CFrame.Angles(math.rad(-8.422), math.rad(9.454), math.rad(159.913)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.025, -0.011, -0.014) * CFrame.Angles(math.rad(9.053), math.rad(9.11), math.rad(-159.34)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.024, 0.068, 0.001) * CFrame.Angles(math.rad(-5.901), math.rad(-1.662), math.rad(-9.225)),
					},
				},
			},
		},
		[1.567] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.02, -0.104) * CFrame.Angles(math.rad(-10.657), 0, math.rad(2.521)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.066, 0.108, 0.023) * CFrame.Angles(math.rad(-6.073), math.rad(4.354), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.085, -0.201, -0.003) * CFrame.Angles(math.rad(-12.548), math.rad(15.298), math.rad(154.87)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.024, -0.012, -0.013) * CFrame.Angles(math.rad(13.465), math.rad(14.897), math.rad(-154.011)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.038, 0.106, 0.001) * CFrame.Angles(math.rad(-6.646), math.rad(-3.037), math.rad(-9.11)),
					},
				},
			},
		},
		[1.583] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.028, -0.149) * CFrame.Angles(math.rad(-10.657), 0, math.rad(3.61)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.095, 0.155, 0.032) * CFrame.Angles(math.rad(-6.474), math.rad(6.646), math.rad(9.511)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.107, -0.252, 0.014) * CFrame.Angles(math.rad(-16.96), math.rad(22.918), math.rad(149.084)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.009, -0.011, 0) * CFrame.Angles(math.rad(18.335), math.rad(22.46), math.rad(-147.88)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.055, 0.152, 0.001) * CFrame.Angles(math.rad(-7.62), math.rad(-4.641), math.rad(-8.995)),
					},
				},
			},
		},
		[1.6] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.038, -0.203) * CFrame.Angles(math.rad(-10.657), 0, math.rad(4.927)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.13, 0.211, 0.041) * CFrame.Angles(math.rad(-6.933), math.rad(9.397), math.rad(9.568)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.115, -0.284, 0.041) * CFrame.Angles(math.rad(-21.429), math.rad(32.372), math.rad(142.609)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.028, -0.011, 0.033) * CFrame.Angles(math.rad(23.205), math.rad(31.914), math.rad(-141.12)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.076, 0.206, 0) * CFrame.Angles(math.rad(-8.709), math.rad(-6.646), math.rad(-8.881)),
					},
				},
			},
		},
		[1.617] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.05, -0.265) * CFrame.Angles(math.rad(-10.657), 0, math.rad(6.474)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.17, 0.276, 0.05) * CFrame.Angles(math.rad(-7.448), math.rad(12.49), math.rad(9.683)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.093, -0.285, 0.073) * CFrame.Angles(math.rad(-25.554), math.rad(43.774), math.rad(135.218)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.092, -0.021, 0.096) * CFrame.Angles(math.rad(27.788), math.rad(43.43), math.rad(-133.442)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.101, 0.268, -0.003) * CFrame.Angles(math.rad(-10.027), math.rad(-8.881), math.rad(-8.824)),
					},
				},
			},
		},
		[1.633] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.062, -0.328) * CFrame.Angles(math.rad(-10.657), 0, math.rad(7.964)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.21, 0.34, 0.058) * CFrame.Angles(math.rad(-8.021), math.rad(15.642), math.rad(9.798)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.032, -0.256, 0.097) * CFrame.Angles(math.rad(-28.132), math.rad(55.52), math.rad(127.311)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.173, -0.049, 0.188) * CFrame.Angles(math.rad(30.882), math.rad(55.29), math.rad(-125.363)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.127, 0.329, -0.006) * CFrame.Angles(math.rad(-11.287), math.rad(-11.173), math.rad(-8.824)),
					},
				},
			},
		},
		[1.65] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.072, -0.381) * CFrame.Angles(math.rad(-10.657), 0, math.rad(9.282)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.246, 0.395, 0.064) * CFrame.Angles(math.rad(-8.48), math.rad(18.335), math.rad(9.912)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.054, -0.213, 0.104) * CFrame.Angles(math.rad(-28.075), math.rad(65.776), math.rad(118.717)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.251, -0.092, 0.289) * CFrame.Angles(math.rad(31.341), math.rad(65.718), math.rad(-116.712)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.15, 0.382, -0.01) * CFrame.Angles(math.rad(-12.433), math.rad(-13.121), math.rad(-8.881)),
					},
				},
			},
		},
		[1.667] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.08, -0.427) * CFrame.Angles(math.rad(-10.657), 0, math.rad(10.371)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.276, 0.442, 0.068) * CFrame.Angles(math.rad(-8.938), math.rad(20.626), math.rad(10.084)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.152, -0.168, 0.094) * CFrame.Angles(math.rad(-23.606), math.rad(74.313), math.rad(107.258)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.318, -0.146, 0.388) * CFrame.Angles(math.rad(27.387), math.rad(74.427), math.rad(-105.31)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.17, 0.426, -0.014) * CFrame.Angles(math.rad(-13.407), math.rad(-14.782), math.rad(-8.938)),
					},
				},
			},
		},
		[1.683] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.087, -0.464) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.287)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.301, 0.48, 0.071) * CFrame.Angles(math.rad(-9.282), math.rad(22.517), math.rad(10.199)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.247, -0.13, 0.074) * CFrame.Angles(math.rad(-9.167), math.rad(80.787), math.rad(87.204)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.371, -0.202, 0.478) * CFrame.Angles(math.rad(13.235), math.rad(81.074), math.rad(-85.199)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.186, 0.462, -0.017) * CFrame.Angles(math.rad(-14.209), math.rad(-16.157), math.rad(-8.995)),
					},
				},
			},
		},
		[1.7] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.093, -0.493) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.975)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.32, 0.51, 0.072) * CFrame.Angles(math.rad(-9.568), math.rad(24.007), math.rad(10.313)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.331, -0.1, 0.05) * CFrame.Angles(math.rad(25.955), math.rad(84.053), math.rad(47.727)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.411, -0.254, 0.551) * CFrame.Angles(math.rad(-24.064), math.rad(84.397), math.rad(-43.316)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.199, 0.489, -0.02) * CFrame.Angles(math.rad(-14.84), math.rad(-17.189), math.rad(-9.053)),
					},
				},
			},
		},
		[1.717] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.097, -0.514) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.49)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.335, 0.531, 0.073) * CFrame.Angles(math.rad(-9.798), math.rad(25.038), math.rad(10.428)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.395, -0.08, 0.028) * CFrame.Angles(math.rad(63.312), math.rad(83.652), math.rad(7.277)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.437, -0.296, 0.605) * CFrame.Angles(math.rad(-63.713), math.rad(83.824), math.rad(-0.401)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.209, 0.509, -0.022) * CFrame.Angles(math.rad(-15.241), math.rad(-17.934), math.rad(-9.11)),
					},
				},
			},
		},
		[1.733] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.099, -0.527) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.777)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.343, 0.544, 0.074) * CFrame.Angles(math.rad(-9.912), math.rad(25.669), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.436, -0.069, 0.013) * CFrame.Angles(math.rad(79.24), math.rad(82.277), math.rad(-10.542)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.452, -0.323, 0.638) * CFrame.Angles(math.rad(-79.469), math.rad(82.334), math.rad(17.303)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.214, 0.521, -0.024) * CFrame.Angles(math.rad(-15.527), math.rad(-18.392), math.rad(-9.167)),
					},
				},
			},
		},
		[1.75] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.1, -0.531) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.892)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.346, 0.548, 0.074) * CFrame.Angles(math.rad(-9.969), math.rad(25.84), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.449, -0.065, 0.008) * CFrame.Angles(math.rad(83.193), math.rad(81.704), math.rad(-15.126)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.457, -0.332, 0.649) * CFrame.Angles(math.rad(-83.193), math.rad(81.704), math.rad(21.772)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.216, 0.525, -0.024) * CFrame.Angles(math.rad(-15.642), math.rad(-18.564), math.rad(-9.167)),
					},
				},
			},
		},
		[1.767] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.099, -0.526) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.777)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.343, 0.543, 0.074) * CFrame.Angles(math.rad(-9.912), math.rad(25.611), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.434, -0.069, 0.014) * CFrame.Angles(math.rad(78.667), math.rad(82.334), math.rad(-9.855)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.452, -0.321, 0.637) * CFrame.Angles(math.rad(-78.896), math.rad(82.391), math.rad(16.673)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.214, 0.52, -0.024) * CFrame.Angles(math.rad(-15.527), math.rad(-18.392), math.rad(-9.167)),
					},
				},
			},
		},
		[1.783] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.096, -0.512) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.433)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.333, 0.529, 0.073) * CFrame.Angles(math.rad(-9.74), math.rad(24.924), math.rad(10.428)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.388, -0.082, 0.031) * CFrame.Angles(math.rad(59.645), math.rad(83.824), math.rad(11.287)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.435, -0.291, 0.599) * CFrame.Angles(math.rad(-59.989), math.rad(84.053), math.rad(-4.469)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.208, 0.507, -0.022) * CFrame.Angles(math.rad(-15.241), math.rad(-17.876), math.rad(-9.11)),
					},
				},
			},
		},
		[1.8] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.092, -0.488) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.86)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.317, 0.505, 0.072) * CFrame.Angles(math.rad(-9.511), math.rad(23.72), math.rad(10.313)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.315, -0.105, 0.055) * CFrame.Angles(math.rad(17.246), math.rad(83.709), math.rad(57.181)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.404, -0.245, 0.538) * CFrame.Angles(math.rad(-14.61), math.rad(84.11), math.rad(-53.572)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.197, 0.484, -0.02) * CFrame.Angles(math.rad(-14.725), math.rad(-17.017), math.rad(-9.053)),
					},
				},
			},
		},
		[1.817] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.086, -0.455) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.058)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.295, 0.471, 0.07) * CFrame.Angles(math.rad(-9.225), math.rad(22.059), math.rad(10.199)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.222, -0.139, 0.08) * CFrame.Angles(math.rad(-14.61), math.rad(79.297), math.rad(93.965)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.359, -0.187, 0.455) * CFrame.Angles(math.rad(18.678), math.rad(79.527), math.rad(-92.074)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.182, 0.453, -0.016) * CFrame.Angles(math.rad(-13.98), math.rad(-15.814), math.rad(-8.995)),
					},
				},
			},
		},
		[1.833] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.078, -0.413) * CFrame.Angles(math.rad(-10.657), 0, math.rad(10.027)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.266, 0.427, 0.067) * CFrame.Angles(math.rad(-8.766), math.rad(19.939), math.rad(10.027)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.119, -0.183, 0.099) * CFrame.Angles(math.rad(-25.84), math.rad(71.677), math.rad(111.612)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.297, -0.127, 0.356) * CFrame.Angles(math.rad(29.393), math.rad(71.734), math.rad(-109.664)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.163, 0.412, -0.013) * CFrame.Angles(math.rad(-13.121), math.rad(-14.267), math.rad(-8.938)),
					},
				},
			},
		},
		[1.85] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.068, -0.361) * CFrame.Angles(math.rad(-10.657), 0, math.rad(8.766)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.232, 0.374, 0.062) * CFrame.Angles(math.rad(-8.308), math.rad(17.303), math.rad(9.855)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.017, -0.231, 0.103) * CFrame.Angles(math.rad(-28.476), math.rad(61.879), math.rad(122.326)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.221, -0.073, 0.248) * CFrame.Angles(math.rad(31.513), math.rad(61.708), math.rad(-120.321)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.141, 0.362, -0.009) * CFrame.Angles(math.rad(-11.975), math.rad(-12.376), math.rad(-8.824)),
					},
				},
			},
		},
		[1.867] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.056, -0.3) * CFrame.Angles(math.rad(-10.657), 0, math.rad(7.277)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.192, 0.311, 0.055) * CFrame.Angles(math.rad(-7.735), math.rad(14.209), math.rad(9.74)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.065, -0.273, 0.088) * CFrame.Angles(math.rad(-27.215), math.rad(50.191), math.rad(130.978)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.135, -0.034, 0.143) * CFrame.Angles(math.rad(29.679), math.rad(49.905), math.rad(-129.087)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.115, 0.302, -0.005) * CFrame.Angles(math.rad(-10.714), math.rad(-10.141), math.rad(-8.824)),
					},
				},
			},
		},
		[1.883] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.044, -0.231) * CFrame.Angles(math.rad(-10.657), 0, math.rad(5.615)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.148, 0.24, 0.046) * CFrame.Angles(math.rad(-7.162), math.rad(10.772), math.rad(9.568)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.11, -0.289, 0.056) * CFrame.Angles(math.rad(-23.434), math.rad(37.471), math.rad(139.286)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.055, -0.014, 0.058) * CFrame.Angles(math.rad(25.439), math.rad(37.07), math.rad(-137.682)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.088, 0.234, -0.001) * CFrame.Angles(math.rad(-9.282), math.rad(-7.678), math.rad(-8.881)),
					},
				},
			},
		},
		[1.9] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.032, -0.17) * CFrame.Angles(math.rad(-10.657), 0, math.rad(4.125)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.108, 0.177, 0.035) * CFrame.Angles(math.rad(-6.646), math.rad(7.678), math.rad(9.511)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.113, -0.268, 0.024) * CFrame.Angles(math.rad(-18.793), math.rad(26.471), math.rad(146.563)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.003, -0.011, 0.01) * CFrame.Angles(math.rad(20.283), math.rad(26.012), math.rad(-145.245)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.063, 0.173, 0) * CFrame.Angles(math.rad(-8.021), math.rad(-5.443), math.rad(-8.938)),
					},
				},
			},
		},
		[1.917] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.022, -0.118) * CFrame.Angles(math.rad(-10.657), 0, math.rad(2.865)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.075, 0.123, 0.026) * CFrame.Angles(math.rad(-6.188), math.rad(5.099), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.093, -0.22, 0.001) * CFrame.Angles(math.rad(-13.98), math.rad(17.647), math.rad(152.98)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.021, -0.012, -0.01) * CFrame.Angles(math.rad(15.069), math.rad(17.189), math.rad(-152.063)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.044, 0.12, 0.001) * CFrame.Angles(math.rad(-6.99), math.rad(-3.552), math.rad(-9.053)),
					},
				},
			},
		},
		[1.933] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.014, -0.075) * CFrame.Angles(math.rad(-10.657), 0, math.rad(1.833)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.048, 0.079, 0.017) * CFrame.Angles(math.rad(-5.844), math.rad(2.922), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.065, -0.158, -0.009) * CFrame.Angles(math.rad(-9.454), math.rad(10.829), math.rad(158.652)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.026, -0.012, -0.014) * CFrame.Angles(math.rad(10.199), math.rad(10.485), math.rad(-158.022)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.028, 0.077, 0.001) * CFrame.Angles(math.rad(-6.073), math.rad(-2.005), math.rad(-9.167)),
					},
				},
			},
		},
		[1.95] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.008, -0.042) * CFrame.Angles(math.rad(-10.657), 0, math.rad(1.031)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.027, 0.044, 0.01) * CFrame.Angles(math.rad(-5.558), math.rad(1.261), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.038, -0.097, -0.01) * CFrame.Angles(math.rad(-5.558), math.rad(5.901), math.rad(163.293)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.02, -0.009, -0.011) * CFrame.Angles(math.rad(5.959), math.rad(5.672), math.rad(-162.949)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.015, 0.044, 0.001) * CFrame.Angles(math.rad(-5.386), math.rad(-0.802), math.rad(-9.282)),
					},
				},
			},
		},
		[1.967] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.004, -0.019) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.458)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.012, 0.02, 0.005) * CFrame.Angles(math.rad(-5.386), math.rad(0.057), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.017, -0.045, -0.006) * CFrame.Angles(math.rad(-2.578), math.rad(2.521), math.rad(166.845)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.011, -0.005, -0.006) * CFrame.Angles(math.rad(2.75), math.rad(2.406), math.rad(-166.673)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.007, 0.019, 0) * CFrame.Angles(math.rad(-4.927), math.rad(0.057), math.rad(-9.339)),
					},
				},
			},
		},
		[1.983] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.005) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.005, 0.001) * CFrame.Angles(math.rad(-5.214), math.rad(-0.63), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.004, -0.012, -0.002) * CFrame.Angles(math.rad(-0.63), math.rad(0.63), math.rad(169.023)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.001, -0.002) * CFrame.Angles(math.rad(0.688), math.rad(0.573), math.rad(-168.965)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.002, 0.005, 0) * CFrame.Angles(math.rad(-4.641), math.rad(0.573), math.rad(-9.397)),
					},
				},
			},
		},
		[2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.Angles(math.rad(-10.657), 0, 0),
					["Left Leg"] = {
						CFrame = CFrame.Angles(math.rad(-5.214), math.rad(-0.859), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(169.767)),
					},
					["Left Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(-169.767)),
					},
					["Right Leg"] = {
						CFrame = CFrame.Angles(math.rad(-4.526), math.rad(0.745), math.rad(-9.454)),
					},
				},
			},
		},
	}
	}

	local number=0

	LastTimeSetTotal=0
	local savec0 = {}


	GetAnimCF = function(limb,Time)

		local GA = nil
		coroutine.resume(coroutine.create(function()

			if limb == "Torso" then
				GA = Anim.Keyframes[Time]["HumanoidRootPart"]["Torso"].CFrame
			else
				GA = Anim.Keyframes[Time]["HumanoidRootPart"]["Torso"][""..limb].CFrame

			end
		end))
		return GA
	end



	local model = nil
	if owner ~= nil then 
		model = owner.Character
	else
		model = game:GetService("Players").localPlayer.Character
	end
	function GatherAllInstances(Parent)
		local Instances = {}
		local function GatherInstances(Parent)
			for i, v in pairs(Parent:GetChildren()) do
				GatherInstances(v)
				table.insert(Instances, v)
			end
		end
		GatherInstances(Parent)
		return Instances
	end




	for i, v in pairs(GatherAllInstances(model)) do
		if v:IsA("BasePart") then 
			for i, v2 in pairs(GatherAllInstances(model)) do
				if v2:IsA("Motor6D") and  v2.Part1.Name == v.Name then 

					local saveCF = v2.C0
					table.insert(savec0,{v2.Name,saveCF})

				end
			end
		end end




	RunAnim = function(Time)






		local speed = Time-LastTimeSetTotal

		speed = speed*AnimationSpeed
		LastTimeSetTotal = Time	



		local doing = true

		coroutine.resume(coroutine.create(function()
			for i, v in pairs(GatherAllInstances(model)) do
				if v:IsA("BasePart") then 
					for i, v2 in pairs(GatherAllInstances(model)) do
						if v2:IsA("Motor6D") and  v2.Part1.Name == v.Name then 

							local GotAnim = GetAnimCF(v.Name,Time)
							local saveCF = nil
							for i,v3 in pairs(savec0) do 
								if v2.name == v3[1] then
									saveCF = v3[2]
								end
							end


							if GotAnim ~= nil and saveCF ~= nil then


								coroutine.resume(coroutine.create(function()
									while doing == true do
										swait()
										v2.C0 = v2.C0:lerp(saveCF*GotAnim,SmoothTime *speed)
									end

								end))


							end

						end

					end
				end end


		end))
		wait(speed)
		doing = false
	end
	while true do
		RunAnim(0)	
		RunAnim(0.1)	
		RunAnim(0.2)
		RunAnim(0.3)
		RunAnim(0.4)
		RunAnim(0.5)
		RunAnim(0.6)
		RunAnim(0.7)
		RunAnim(0.8)
		RunAnim(0.9)
		RunAnim(1)

		LastTimeSetTotal = .1
		Humanoid.MaxHealth = "inf"
		Humanoid.Health = "inf"
		sick.SoundId = "rbxassetid://"
		sick.Looped = true
		sick.Pitch = 1
		sick.Volume = 10
		sick:Resume()
		sick.Parent = Torso
		refit()
	end
end)

Sonic.Name = "Sonic"
Sonic.Parent = ScreenGui
Sonic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sonic.BorderSizePixel = 3
Sonic.Position = UDim2.new(0.0646766126, 0, 0.593023241, 0)
Sonic.Size = UDim2.new(0, 139, 0, 31)
Sonic.Font = Enum.Font.SourceSansBold
Sonic.Text = "Sonic"
Sonic.TextColor3 = Color3.fromRGB(0, 0, 0)
Sonic.TextSize = 14.000
Sonic.MouseButton1Down:connect(function()
	loadstring(game:HttpGetAsync("https://pastebin.com/raw/SyF5t70A"))()
end)


Sonic.Name = "Sonic"
Sonic.Parent = Frame
Sonic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sonic.BorderSizePixel = 3
Sonic.Position = UDim2.new(0.0646766126, 0, 0.38019526, 0)
Sonic.Size = UDim2.new(0, 139, 0, 31)
Sonic.Font = Enum.Font.SourceSansBold
Sonic.Text = "Sonic"
Sonic.TextColor3 = Color3.fromRGB(0, 0, 0)
Sonic.TextSize = 14.000
Sonic.MouseButton1Down:connect(function()
	loadstring(game:HttpGetAsync("https://pastebin.com/raw/SyF5t70A"))()
end)

Yeild.Name = "Yeild"
Yeild.Parent = Frame
Yeild.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Yeild.BorderSizePixel = 3
Yeild.Position = UDim2.new(0.29126218, 0, 0.656773269, 0)
Yeild.Size = UDim2.new(0, 139, 0, 31)
Yeild.Font = Enum.Font.SourceSansBold
Yeild.Text = "Infinite Yeild"
Yeild.TextColor3 = Color3.fromRGB(0, 0, 0)
Yeild.TextSize = 14.000
Yeild.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(73, 74, 74)
TextLabel.BorderSizePixel = 5
TextLabel.Position = UDim2.new(-0.000882984605, 0, -0.00121196103, 0)
TextLabel.Size = UDim2.new(0, 373, 0, 53)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Joseph Exploit's v1"
TextLabel.TextColor3 = Color3.fromRGB(63, 163, 217)
TextLabel.TextSize = 30.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0298240744, 0, 0.765869737, 0)
TextLabel_2.Size = UDim2.new(0, 349, 0, 74)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "If there is any scripts that dont work. Please dm me on discord at Temmy#4392. Please note that this is a work in progress so please dont expect me to be good at making this stuff!"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
