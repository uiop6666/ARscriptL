game:GetService("StarterGui"):SetCore("SendNotification",{ 	Title = "by rk06", 	Text = "加载脚本", 	Duration = 10 })
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "AR脚本", HidePremium = false, SaveConfig = true,IntroText = "AR脚本", ConfigFolder = "AR脚本"})

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "AR脚本"; Text ="AR脚本"; Duration = 4; })

local about = Window:MakeTab({
    Name = "信息",
    Icon = "rbxassetid://2736691058",
    PremiumOnly = false

})

about:AddParagraph("倒卖狗你妈死")
about:AddParagraph("永久免费，持续云更")
about:AddParagraph("作者rk06")
about:AddParagraph("UI不是自己的")

local Tab =Window:MakeTab({

	Name = "作者没有q",

	Icon = "rbxassetid://2736691058",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "作者无q",

	Callback = function()

     setclipboard("0")

  	end

})

Tab:AddButton({

	Name = "无QQ群",

	Callback = function()

     setclipboard("?")

  	end

})

OrionLib:MakeNotification({
	Name = "AR",
	Content = "欢迎使用免费脚本",
	Image = "rbxassetid://4483345998",
	Time = 2

})

local Tab = Window:MakeTab({

    Name = "通用",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "rk创作"

})

Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})

Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})

Tab:AddTextbox({

	Name = "跳跃高度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end

})

Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end

})

Tab:AddTextbox({

	Name = "重力设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Workspace.Gravity = Value

	end

})

Tab:AddToggle({

	Name = "夜视",

	Default = false,

	Callback = function(Value)

		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end

	end

})

Tab:AddButton({

	Name = "飞行V3（隐藏）",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()

  	end    

})

Tab:AddButton({

	Name = "替身",

	Callback = function()

loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()

    end

})

Tab:AddButton({

	Name = "爬墙",

	Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()

end

})

Tab:AddButton({

	Name = "光影V4",

	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()

end

})

Tab:AddButton({

	Name = "变成蛇",

	Callback = function()

loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()

	end

})

Tab:AddButton({

	Name = "让别让别人控制自己",

	Callback = function()

loadstring(game:HttpGet(('https://pastefy.ga/a7RTi4un/raw'),true))()

	end

})

Tab:AddButton({

	Name = "点击传送工具",

	Callback = function()

mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack

	end

})

Tab:AddButton({

	Name = "无敌",

	Callback = function()

local lp = game:GetService "Players".LocalPlayer

if lp.Character:FindFirstChild "Head" then

    local char = lp.Character

    char.Archivable = true

    local new = char:Clone()

    new.Parent = workspace

    lp.Character = new

    wait(2)

    local oldhum = char:FindFirstChildWhichIsA "Humanoid"

    local newhum = oldhum:Clone()

    newhum.Parent = char

    newhum.RequiresNeck = false

    oldhum.Parent = nil

    wait(2)

    lp.Character = char

    new:Destroy()

    wait(1)

    newhum:GetPropertyChangedSignal("Health"):Connect(

        function()

            if newhum.Health <= 0 then

                oldhum.Parent = lp.Character

                wait(1)

                oldhum:Destroy()

            end

        end)

    workspace.CurrentCamera.CameraSubject = char

    if char:FindFirstChild "Animate" then

        char.Animate.Disabled = true

        wait(.1)

        char.Animate.Disabled = false

    end

    lp.Character:FindFirstChild "Head":Destroy()

end

end

})

Tab:AddButton({

	Name = "甩飞别人",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()

  	end    

})

Tab:AddButton({

	Name = "防止掉线（反挂机）",

	Callback = function()

	print("Anti Afk On")

		local vu = game:GetService("VirtualUser")

		game:GetService("Players").LocalPlayer.Idled:connect(function()

		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		   wait(1)

		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		end)

  	end

})

Tab:AddButton({

	Name = "透视",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()

  	end    

})

Tab:AddButton({

	Name = "吸取全部玩家（别人看不见）",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/hQSBGsw2'))()

  	end    

})

Tab:AddButton({

	Name = "人物无敌（不适用）",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()

	end    

})

Tab:AddButton({

	Name = "隐身(E)",

	Callback = function()

	 loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()

  	end    

})

Tab:AddButton({

	Name = "电脑键盘",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()

  	end    

})

Tab:AddButton({

	Name = "飞车(E)(别人看到)",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()

  	end    

})

Tab:AddTextbox({

	Name = "跳跃高度",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end	 

})

Tab:AddTextbox({

	Name = "重力设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Workspace.Gravity = Value

	end

})

Tab:AddToggle({

	Name = "穿墙2",

	Default = false,

	Callback = function(Value)

		if Value then

		    Noclip = true

		    Stepped = game.RunService.Stepped:Connect(function()

			    if Noclip == true then

				    for a, b in pairs(game.Workspace:GetChildren()) do

                        if b.Name == game.Players.LocalPlayer.Name then

                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do

                                if v:IsA("BasePart") then

                                    v.CanCollide = false

                                end

                            end

                        end

                    end

			    else

				    Stepped:Disconnect()

			    end

		    end)

	    else

		    Noclip = false

	    end

	end

})

Tab:AddToggle({

	Name = "夜视",

	Default = false,

	Callback = function(Value)

		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end

	end

})

Tab:AddButton({

	Name = "鼠标（手机非常不建议用）",

	Callback = function()

loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()

	end

})

Tab:AddButton({

	Name = "飞行",

	Callback = function()

loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()

	end 

})

Tab:AddButton({

	Name = "跟踪玩家",

	Callback = function()

      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()

  	end

})

Tab:AddButton({

	Name = "伪名说话（娱乐）",

	Callback = function()

loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()

	end 

})

Tab:AddButton({

	Name = "踏空行走",

	Callback = function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()

	end

})

Tab:AddButton({

	Name = "透视",

	Callback = function()

loadstring(game:GetObjects("rbxassetid://10092697033")[1].Source)()

	end 

})

Tab:AddButton({

	Name = "转圈（使用此项关闭移位锁）",

	Callback = function()

      	loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()

  	end

})

Tab:AddButton({

	Name = "隐身(E)",

	Callback = function()

	 loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()

  	end    

})

Tab:AddButton({

    Name="紫砂",

    Callback=function()

        game.Players.LocalPlayer.Character.Humanoid.Health=0

    end

})

local Tab = Window:MakeTab({

	Name = "自然灾害模拟器",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false
	
})

Tab:AddButton({

	Name = "项目一",	
	
	Callback = function()
	
loadstring(game:HttpGet('https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main'))()	
	
	end

})

Tab:AddButton({

	Name = "项目二",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()	
	
	end
			
})

local Tab = Window:MakeTab({

	Name = "力量传奇",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "杯脚本",

	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/llcq"))()

    end

})

Tab:AddButton({

	Name = "剑客 需加群组",

	Callback = function()

jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()

    end

})

Tab:AddButton({
	
	Name = "V.G Hub",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/littlegui/main/MuscleLegends"))()	
	
	end
	
})

local Tab = Window:MakeTab({

	Name = "忍者传奇",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "青",

	Callback = function()

loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()

    end

})

Tab:AddButton({

	Name = "项目一",

	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/5repo/main/script4.lua"))()

    end

})

Tab:AddButton({
	
	Name = "项目二",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()		
	
	end

})

Tab:AddButton({
	
	Name = "项目三",	
	
	Callback = function()
	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XRoLLu/UWU/main/Ninja-Legenos.exe.lua"))()
	
	end

})

local Tab = Window:MakeTab({

	Name = "BF",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false
	
})

Tab:AddButton({
	
	Name = "自动刷级",	
	
	Callback = function()
	
loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()	
	
	end

})

Tab:AddButton({
	
	Name = "汉化版",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Xiao-Yun-UWU/main/%E6%B5%B7%E8%B4%BC%E7%8E%8Bbf.lua", true))()
	
	end

})

Tab:AddButton({
	
	Name = "项目三",	
	
	Callback = function()
	
loadstring(game:HttpGet('https://rawscripts.net/raw/UPDATE-16-Blox-Fruits-Nub-V1-Hub-4583'))()
	
	end

})

Tab:AddButton({
	
	Name = "Zen Hub",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", true))()
	
	end	
	
})

local Tab = Window:MakeTab({

	Name = "极速传奇",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "青",

	Callback = function()

loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()

    end

})

Tab:AddButton({

	Name = "剑客要加群组",

	Callback = function()

jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()

    end

})

Tab:AddButton({
	
	Name = "Boa",	
	
	Callback = function()
	
loadstring(game:HttpGet('https://raw.githubusercontent.com/BoaHacker/ROBLOX/main/cheat', true))()
	
	end

})

Tab:AddButton({
	
	Name = "汉化（改数值）",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://pastebin.com/raw/egMXJcwB", true))()
	
	end
	
})

local Tab = Window:MakeTab({

	Name = "doors",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "微山（失效）",

	Callback = function()

loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()

    end

})
Tab:AddButton({

	Name = "剑客",

	Callback = function()

jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()

    end

})

Tab:AddButton({
	
	Name = "最强",	
	
	Callback = function()
	
loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
	
	end

})

Tab:AddButton({

	Name = "Darkrai",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))()
	
	end

})

Tab:AddButton({

	Name = "RP变怪（别人看不见）",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
	
	end
			
})

local Tab = Window:MakeTab({

	Name = "骨折VI",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false
	
})

Tab:AddButton({
	
	Name = "项目一",	
	
	Callback = function()
	
loadstring(game:HttpGet('https://pastebin.com/raw/5rEAVmcC'))()	
	
	end
		      
})

local Tab = Window:MakeTab({

	Name = "巴掌2",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "项目一",

	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()

    end

})

local Tab = Window:MakeTab({

	Name = "刀刃球",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "VectorHub",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tuxoz/VectorHub/main/MB*PC.lua"))() 	
	
	end

})

Tab:AddButton({

	Name = "项目二",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/Prymoric/Alaxus-Refinement-/main/Alaxus%20Blade%20Ball",true))()	

    end
    
})

Tab:AddButton({

	Name = "crazzy hub",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/kmmwhocare/Crazzy-Hub/main/Blade%20Ball"))()
	
	end			

})

local Tab = Window:MakeTab({

	Name = "BF",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false
	
})

Tab:AddButton({

	Name = "1",	
	
	Callback = function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))() 
    	
	
	end

})

Tab:AddButton({

	Name = "2",	
	
	Callback = function()
	
getgenv().Team = "Pirates"loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()	
	
	end
					
})
				
local Tab = Window:MakeTab({

	Name = "其他游戏",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "模仿者",

	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ttjy9808/obfloadstringmainmimic/main/README.md", true))()

    end

})

Tab:AddButton({

	Name = "战斗勇士",

	Callback = function()

loadstring(game:HttpGet("https://projecthook.xyz/scripts/free.lua"))()

    end

})

Tab:AddButton({

	Name = "战斗勇士英文",

	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))();

    end

})

Tab:AddButton({

	Name = "火箭🚀",

	Callback = function()

loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/9245/%E7%8C%AB%E9%80%9A%E7%94%A8.txt?sign=hrWROZdVfK2mtJcIFa3Tvbl-TojP1C86_Zd3q03qttc%3D%3A0"))()

    end

})

Tab:AddButton({

	Name = "只因剑",

	Callback = function()

  loadstring(game:HttpGet(('https://gist.githubusercontent.com/blox-hub-roblox/021bad62bbc6a0adc4ba4e625f9ad7df/raw/c89af6e1acf587d09e4ce4bc7510e7100e0c0065/swordWarrior.lua'),true))()

    end

})

local Tab = Window:MakeTab({

	Name = "其它脚本",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "青风",

	Callback = function()

loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,116,53,87,75,53,72,48,72})end)())))("青风脚本")

    end

})

Tab:AddButton({

	Name = "静新",

	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/gggggghjjnbb/main/jdjdd"))()

    end

})

Tab:AddButton({

	Name = "北极",

	Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/KwARpDxV",true))()

    end

})

Tab:AddButton({

	Name = "SF",

	Callback = function()

SF_V7 = "作者_神罚"SheFa = "QQ群637340150"loadstring(game:HttpGet(('https://raw.githubusercontent.com/WDQi/SF/main/%E7%9C%8B%E4%BD%A0M.txt')))()

    end

})

Tab:AddButton({

	Name = "导管中心",

	Callback = function()

loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()

    end

})

Tab:AddButton({

	Name = "忍",

	Callback = function()

loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,52,81,74,109,75,50,99,72})end)())))()

    end

})

Tab:AddButton({

	Name = "剑客",

	Callback = function()

loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/Sword-Guest/main/JKYYDS')))()

    end

})

Tab:AddButton({

	Name = "脚本中心",

	Callback = function()

loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()

    end

})

Tab:AddButton({

	Name = "鸭",

	Callback = function()

loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()

    end

})

Tab:AddButton({

	Name = "水下世界",

	Callback = function()

loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\106\115\105\100\106\100\110\110\115\110\115\110\115\47\115\106\115\105\100\106\100\110\110\115\110\115\110\115\47\109\97\105\110\47\82\69\65\68\77\69\46\109\100\34\41\41\40\41")()

    end

})

Tab:AddButton({

	Name = "QB",

	Callback = function()

loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,51,69,49,54,76,51,90,106})end)())))()

    end

})

Tab:AddButton({

	Name = "神光",

	Callback = function()

loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,56,102,50,76,99,113,113,80})end)())))()

    end

})

Tab:AddButton({

	Name = "秋",

	Callback = function()

local SCC_CharPool={
[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,83,56,53,55,57,54,48,47,45,47,109,97,105,110,47,37,69,55,37,65,55,37,56,66,37,67,50,37,66,55,37,69,56,37,56,55,37,65,65,37,69,53,37,56,56,37,66,54,37,69,56,37,56,52,37,57,65,37,69,54,37,57,67,37,65,67,37,69,54,37,57,54,37,66,48,37,69,54,37,66,65,37,57,48,37,69,55,37,65,48,37,56,49,46,116,120,116})end)()))}
loadstring(game:HttpGet(SCC_CharPool[1]))()

    end

})

Tab:AddButton({

	Name = "云",

	Callback = function()

_G.Clouduilib = "白灰脚作者小云，加载出十几秒"loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/%E7%99%BD%E7%81%B0%E8%84%9A%E6%9C%ACbeta.lua", true))()

    end

})

Tab:AddButton({

	Name = "剑客 门",

	Callback = function()

jianke_V3 = "作者_初夏"jianke1 = "剑客QQ群347724155"jianke2 = "此脚本为剑客V3门脚本,不是剑客V3整合脚本"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/Doors')))()

    end

})

Tab:AddButton({

	Name = "XC",

	Callback = function()

getgenv().XC="作者XC"loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()

    end

})

Tab:AddButton({

	Name = "青",

	Callback = function()

loadstring(game:HttpGet('https://rentry.co/cyq78/raw'))()

    end

})

Tab:AddButton({

	Name = "星火",

	Callback = function()

loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/9319/%E6%98%9F%E7%81%AB%E4%BA%A4%E8%BE%89%E8%84%9A%E6%9C%AC%E6%BA%90%E7%A0%81.lua?sign=pw1GHDb-tSJH25rTcTo_QPhzJBe73nf7djKDL1vQN1M%3D%3A0"))()

    end

})

Tab:AddButton({

	Name = "鱼",

	Callback = function()

getgenv().FISH = "鱼脚本群:851686462"loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\101\108\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\72\119\81\77\82\90\68\69\34\41\41\40\41")("鱼脚本")

    end

})

Tab:AddButton({

	Name = "皇",

	Callback = function()

loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8577/%E7%9A%87v5.txt?sign=ToDT3Udyh4r3WwDu_yVblRL849qC2GJjjjQ7FTidF_w%3D%3A0"))()

    end

})

Tab:AddButton({

	Name = "空情",

	Callback = function()

loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8628/%E9%9D%99?sign=uxlt7ravTFmP3TZLNgN7zImLHxJWhH93SEbKgFA_PRc%3D%3A0"))()

    end

})
