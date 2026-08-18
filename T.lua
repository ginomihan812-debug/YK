--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0 = loadstring(game:HttpGet("https://sirius.menu/rayfield"))();
local v1 = game:GetService("Players");
local v2 = v1.LocalPlayer;
local v3 = game:GetService("RunService");
local v4 = game:GetService("StarterGui");
local v5 = game:GetService("ReplicatedStorage");
local v6 = game:GetService("Workspace");
local v7 = game:GetService("Lighting");
local v8;
local function v9()
	local FlatIdent_8D327 = 0;
	while true do
		if (FlatIdent_8D327 == 0) then
			if v8 then
				return;
			end
			v8 = v2.Idled:Connect(function()
				local FlatIdent_67C40 = 0;
				while true do
					if (1 == FlatIdent_67C40) then
						task.wait(1);
						game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
						break;
					end
					if (FlatIdent_67C40 == 0) then
						task.wait(0.1);
						game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
						FlatIdent_67C40 = 1;
					end
				end
			end);
			FlatIdent_8D327 = 1;
		end
		if (FlatIdent_8D327 == 1) then
			v4:SetCore("SendNotification", {Title="反挂机已开启。",Text=" ",Duration=3,Icon="rbxassetid://128981664025072"});
			break;
		end
	end
end
v9();
local v10 = v0:CreateWindow({Name="银狼脚本",LoadingTitle="银狼脚本",LoadingSubtitle="ST封锁战线",ShowText="银狼脚本",Icon=128981664025072,Style=3,DisableRayfieldPrompts=true,ConfigurationSaving={Enabled=false}});
local v11 = v10:CreateTab("主要功能");
local v12 = v10:CreateTab("其它");
local v13 = v10:CreateTab("自动化");
local v14 = v10:CreateTab("选择特殊泰坦");
local v15 = v10:CreateTab("选择角色");
local v16 = v10:CreateTab("加入私服房");
local v17 = v10:CreateTab("ESP");
local v18 = v10:CreateTab("商店");
local v19 = v10:CreateTab("付费功能");
local v20 = 0;
v11:CreateInput({Name="CFrame移速",PlaceholderText="",RemoveTextAfterFocusLost=false,Callback=function(v133)
	local FlatIdent_8D83D = 0;
	local v134;
	while true do
		if (FlatIdent_8D83D == 0) then
			v134 = tonumber(v133);
			if v134 then
				v20 = v134;
			else
				v20 = 0;
			end
			break;
		end
	end
end});
v3.Stepped:Connect(function()
	if ((v20 > 0) and v2.Character and v2.Character:FindFirstChild("HumanoidRootPart")) then
		local FlatIdent_1743D = 0;
		local v542;
		local v543;
		while true do
			if (FlatIdent_1743D == 0) then
				v542 = v2.Character.HumanoidRootPart;
				v543 = v2.Character.Humanoid.MoveDirection;
				FlatIdent_1743D = 1;
			end
			if (FlatIdent_1743D == 1) then
				v542.CFrame = v542.CFrame + (v543 * v20);
				break;
			end
		end
	end
end);
v11:CreateButton({Name="复制休闲码",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_25011 = 0;
		local v468;
		while true do
			if (FlatIdent_25011 == 0) then
				v468 = v5:WaitForChild("DiffModeCode").Value;
				setclipboard(v468);
				FlatIdent_25011 = 1;
			end
			if (FlatIdent_25011 == 1) then
				v4:SetCore("SendNotification", {Title="功能提示",Text="休闲码已复制到剪贴板！",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v11:CreateButton({Name="随机服务器",Ext=true,Callback=function()
	local FlatIdent_1076E = 0;
	local v135;
	local v136;
	local v137;
	local v138;
	while true do
		if (FlatIdent_1076E == 3) then
			v138();
			break;
		end
		if (1 == FlatIdent_1076E) then
			v137 = nil;
			function v137(v469)
				local v470 = "https://games.roblox.com/v1/games/" .. v469 .. "/servers/Public?limit=100";
				local v471, v472 = pcall(function()
					return v135:JSONDecode(game:HttpGet(v470));
				end);
				if (v471 and v472 and v472.data) then
					return v472.data;
				end
				return {};
			end
			FlatIdent_1076E = 2;
		end
		if (FlatIdent_1076E == 0) then
			v135 = game:GetService("HttpService");
			v136 = game:GetService("TeleportService");
			FlatIdent_1076E = 1;
		end
		if (FlatIdent_1076E == 2) then
			v138 = nil;
			function v138()
				local FlatIdent_E652 = 0;
				local v473;
				local v474;
				local v475;
				while true do
					if (0 == FlatIdent_E652) then
						v473 = v137(game.PlaceId);
						if (#v473 == 0) then
							local FlatIdent_782B8 = 0;
							while true do
								if (FlatIdent_782B8 == 0) then
									v4:SetCore("SendNotification", {Title="提示",Text="没有找到可用的服务器",Duration=2,Icon="rbxassetid://128981664025072"});
									return;
								end
							end
						end
						FlatIdent_E652 = 1;
					end
					if (2 == FlatIdent_E652) then
						v136:TeleportToPlaceInstance(game.PlaceId, v475, v2);
						break;
					end
					if (FlatIdent_E652 == 1) then
						v474 = v473[math.random(1, #v473)];
						v475 = v474.id;
						FlatIdent_E652 = 2;
					end
				end
			end
			FlatIdent_1076E = 3;
		end
	end
end});
v11:CreateToggle({Name="背包界面",CurrentValue=false,Flag="InventoryToggle",Ext=true,Callback=function(v139)
	local FlatIdent_49AED = 0;
	local v140;
	while true do
		if (FlatIdent_49AED == 0) then
			v140 = v2:FindFirstChild("PlayerGui");
			if v140 then
				local FlatIdent_99389 = 0;
				local v545;
				while true do
					if (FlatIdent_99389 == 0) then
						v545 = v140:FindFirstChild("Inventory");
						if v545 then
							local FlatIdent_8CEDF = 0;
							while true do
								if (FlatIdent_8CEDF == 0) then
									v545.Enabled = v139;
									v4:SetCore("SendNotification", {Title="功能提示",Text=((v139 and "已开启背包界面") or "已关闭背包界面"),Duration=2,Icon="rbxassetid://128981664025072"});
									break;
								end
							end
						else
							v4:SetCore("SendNotification", {Title="错误提示",Text="找不到 Inventory 界面",Duration=2,Icon="rbxassetid://128981664025072"});
						end
						break;
					end
				end
			end
			break;
		end
	end
end});
local v21 = false;
local v22 = nil;
local v23 = nil;
local v24 = {"CameraAwaken","Kaijin","TekrinnDialogueRemote","CameraAwakenV2","CameraAwakenHeadCap","Kakajumon"};
local function v25()
	for v476, v477 in pairs(v24) do
		local FlatIdent_33EA4 = 0;
		local v478;
		while true do
			if (FlatIdent_33EA4 == 0) then
				v478 = v5:FindFirstChild(v477);
				if v478 then
					v478:Destroy();
				end
				break;
			end
		end
	end
end
local function v26()
	local v141 = v2:FindFirstChild("PlayerGui");
	local v142 = game:GetService("CoreGui");
	if v141 then
		for v596, v597 in pairs(v141:GetChildren()) do
			if v597:IsA("ScreenGui") then
				local FlatIdent_25DF3 = 0;
				local v656;
				while true do
					if (FlatIdent_25DF3 == 0) then
						v656 = v597.Name:lower();
						if (v656:find("dialogue") or v656:find("dialog")) then
							v597:Destroy();
						end
						break;
					end
				end
			end
		end
	end
	for v479, v480 in pairs(v142:GetChildren()) do
		if v480:IsA("ScreenGui") then
			local FlatIdent_50BBA = 0;
			local v598;
			while true do
				if (FlatIdent_50BBA == 0) then
					v598 = v480.Name:lower();
					if (v598:find("dialogue") or v598:find("dialog")) then
						v480:Destroy();
					end
					break;
				end
			end
		end
	end
end
local function v27()
	local FlatIdent_5BA5E = 0;
	local v143;
	local v144;
	while true do
		if (FlatIdent_5BA5E == 2) then
			for v481, v482 in pairs(v144:GetPlayingAnimationTracks()) do
				local FlatIdent_8BF78 = 0;
				while true do
					if (FlatIdent_8BF78 == 0) then
						v482:Stop();
						v482:Destroy();
						break;
					end
				end
			end
			break;
		end
		if (FlatIdent_5BA5E == 1) then
			v144 = v143:FindFirstChildWhichIsA("Humanoid");
			if not v144 then
				return;
			end
			FlatIdent_5BA5E = 2;
		end
		if (FlatIdent_5BA5E == 0) then
			v143 = v2.Character;
			if not v143 then
				return;
			end
			FlatIdent_5BA5E = 1;
		end
	end
end
v11:CreateToggle({Name="删除山本特效",CurrentValue=false,Flag="DeleteShanbenToggle",Ext=true,Callback=function(v145)
	if v145 then
		local FlatIdent_817B0 = 0;
		while true do
			if (FlatIdent_817B0 == 0) then
				if not v21 then
					local FlatIdent_52551 = 0;
					while true do
						if (FlatIdent_52551 == 1) then
							v26();
							v27();
							FlatIdent_52551 = 2;
						end
						if (FlatIdent_52551 == 0) then
							v21 = true;
							v25();
							FlatIdent_52551 = 1;
						end
						if (FlatIdent_52551 == 2) then
							if v23 then
								local FlatIdent_8B523 = 0;
								while true do
									if (FlatIdent_8B523 == 0) then
										v23:Disconnect();
										v23 = nil;
										break;
									end
								end
							end
							v23 = v5.ChildAdded:Connect(function(v657)
								local FlatIdent_161F1 = 0;
								while true do
									if (FlatIdent_161F1 == 0) then
										task.wait(0.1);
										if v21 then
											for v738, v739 in pairs(v24) do
												if (v657.Name == v739) then
													v657:Destroy();
												end
											end
										end
										break;
									end
								end
							end);
							FlatIdent_52551 = 3;
						end
						if (FlatIdent_52551 == 3) then
							v22 = task.spawn(function()
								while v21 do
									local FlatIdent_20FB0 = 0;
									while true do
										if (0 == FlatIdent_20FB0) then
											task.wait(1);
											if v21 then
												local FlatIdent_5B4A8 = 0;
												while true do
													if (FlatIdent_5B4A8 == 1) then
														v27();
														break;
													end
													if (FlatIdent_5B4A8 == 0) then
														v25();
														v26();
														FlatIdent_5B4A8 = 1;
													end
												end
											end
											break;
										end
									end
								end
							end);
							break;
						end
					end
				end
				v4:SetCore("SendNotification", {Title="功能提示",Text="已开启删除山本特效",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	else
		local FlatIdent_49280 = 0;
		while true do
			if (FlatIdent_49280 == 0) then
				v21 = false;
				if v22 then
					local FlatIdent_2E9CB = 0;
					while true do
						if (FlatIdent_2E9CB == 0) then
							task.cancel(v22);
							v22 = nil;
							break;
						end
					end
				end
				FlatIdent_49280 = 1;
			end
			if (FlatIdent_49280 == 1) then
				if v23 then
					local FlatIdent_29E69 = 0;
					while true do
						if (FlatIdent_29E69 == 0) then
							v23:Disconnect();
							v23 = nil;
							break;
						end
					end
				end
				v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭删除山本特效",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end
end});
local v28 = nil;
v11:CreateToggle({Name="锁定视角",CurrentValue=false,Flag="LockCameraToggle",Ext=true,Callback=function(v146)
	if v146 then
		if not v28 then
			v28 = v3.Heartbeat:Connect(function()
				local v658 = v2.Character;
				if not v658 then
					return;
				end
				local v659 = v658:FindFirstChild("HumanoidRootPart");
				if not v659 then
					return;
				end
				local v660 = workspace.CurrentCamera;
				if not v660 then
					return;
				end
				local v661 = v660.CFrame.LookVector;
				local v662 = Vector3.new(v661.X, 0, v661.Z).Unit;
				if (v662.Magnitude > 0) then
					v659.CFrame = CFrame.lookAt(v659.Position, v659.Position + v662);
				end
			end);
		end
		v4:SetCore("SendNotification", {Title="功能提示",Text="已开启锁定视角",Duration=2,Icon="rbxassetid://128981664025072"});
	else
		local FlatIdent_75224 = 0;
		while true do
			if (FlatIdent_75224 == 0) then
				if v28 then
					v28:Disconnect();
					v28 = nil;
				end
				v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭锁定视角",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end
end});
v11:CreateToggle({Name="zuts远距离跟随",CurrentValue=false,Flag="MonsterFollowToggle",Ext=true,Callback=function(v147)
	if v147 then
		local FlatIdent_C505 = 0;
		while true do
			if (FlatIdent_C505 == 0) then
				if not fConn then
					fConn = v3.Heartbeat:Connect(function()
						pcall(function()
							local FlatIdent_22216 = 0;
							local v673;
							local v674;
							local v675;
							local v676;
							local v677;
							while true do
								if (FlatIdent_22216 == 0) then
									v673 = v2.Character;
									if not v673 then
										return;
									end
									v674 = v673:FindFirstChild("HumanoidRootPart");
									if not v674 then
										return;
									end
									FlatIdent_22216 = 1;
								end
								if (FlatIdent_22216 == 1) then
									v675 = v6:FindFirstChild("Living");
									if not v675 then
										return;
									end
									v676 = v675:FindFirstChild("Zombie Upgraded Titan Speaker V2");
									if not v676 then
										return;
									end
									FlatIdent_22216 = 2;
								end
								if (FlatIdent_22216 == 2) then
									v677 = v676:FindFirstChild("HumanoidRootPart");
									if not v677 then
										return;
									end
									v674.CFrame = CFrame.new(v677.Position + Vector3.new(90, 15, -130), v677.Position);
									break;
								end
							end
						end);
					end);
				end
				v4:SetCore("SendNotification", {Title="功能提示",Text="已开启zuts远距离跟随",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	else
		local FlatIdent_7BCBE = 0;
		while true do
			if (FlatIdent_7BCBE == 0) then
				if fConn then
					local FlatIdent_1B881 = 0;
					while true do
						if (FlatIdent_1B881 == 0) then
							fConn:Disconnect();
							fConn = nil;
							break;
						end
					end
				end
				v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭zuts远距离跟随",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end
end});
local v29 = nil;
local v30 = false;
local v31 = nil;
v11:CreateToggle({Name="删除导弹特效",CurrentValue=false,Flag="DeleteMissileToggle",Ext=true,Callback=function(v148)
	if v148 then
		if not v30 then
			local FlatIdent_74C68 = 0;
			while true do
				if (1 == FlatIdent_74C68) then
					v4:SetCore("SendNotification", {Title="功能提示",Text="已开启删除导弹特效",Duration=2,Icon="rbxassetid://128981664025072"});
					break;
				end
				if (FlatIdent_74C68 == 0) then
					v30 = true;
					v31 = task.spawn(function()
						while v30 do
							local FlatIdent_25A9F = 0;
							local v679;
							while true do
								if (FlatIdent_25A9F == 0) then
									v679 = v6:FindFirstChild("Effects");
									if v679 then
										for v755, v756 in ipairs(v679:GetChildren()) do
											if (v756.Name == "MissileBOOM") then
												pcall(function()
													v756:Destroy();
												end);
											end
										end
									end
									FlatIdent_25A9F = 1;
								end
								if (FlatIdent_25A9F == 1) then
									task.wait(0.1);
									break;
								end
							end
						end
					end);
					FlatIdent_74C68 = 1;
				end
			end
		end
	else
		local FlatIdent_C13B = 0;
		while true do
			if (FlatIdent_C13B == 0) then
				v30 = false;
				if v31 then
					local FlatIdent_691EB = 0;
					while true do
						if (FlatIdent_691EB == 0) then
							task.cancel(v31);
							v31 = nil;
							break;
						end
					end
				end
				FlatIdent_C13B = 1;
			end
			if (FlatIdent_C13B == 1) then
				v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭删除导弹特效",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end
end});
v11:CreateToggle({Name="自动重生",CurrentValue=false,Flag="AutoRebirthToggle",Ext=true,Callback=function(v149)
	if v149 then
		local FlatIdent_3B7E2 = 0;
		while true do
			if (FlatIdent_3B7E2 == 0) then
				task.spawn(function()
					while v149 do
						local FlatIdent_1013A = 0;
						local v646;
						while true do
							if (0 == FlatIdent_1013A) then
								v646 = v2.Character;
								if v646 then
									local FlatIdent_1F68E = 0;
									local v680;
									while true do
										if (0 == FlatIdent_1F68E) then
											v680 = v646:FindFirstChild("Humanoid");
											if (v680 and (v680.Health < 10) and v646:IsDescendantOf(v6:FindFirstChild("Living"))) then
												v680.Health = 0;
											end
											break;
										end
									end
								end
								FlatIdent_1013A = 1;
							end
							if (FlatIdent_1013A == 1) then
								task.wait(1);
								break;
							end
						end
					end
				end);
				v4:SetCore("SendNotification", {Title="功能提示",Text="已开启自动重生",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	else
		v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭自动重生",Duration=2,Icon="rbxassetid://128981664025072"});
	end
end});
local v32 = false;
local v33 = nil;
v12:CreateButton({Name="飞行",Ext=true,Callback=function()
	if not v32 then
		local FlatIdent_70B9A = 0;
		while true do
			if (FlatIdent_70B9A == 0) then
				v32 = true;
				v33 = loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\77\65\75\69\56\54\54\47\102\107\99\120\102\103\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\37\69\57\37\65\51\37\57\69\37\69\56\37\65\49\37\56\67\46\108\117\97"))();
				FlatIdent_70B9A = 1;
			end
			if (FlatIdent_70B9A == 1) then
				v4:SetCore("SendNotification", {Title="功能提示",Text="已开启飞行",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	else
		local FlatIdent_81225 = 0;
		while true do
			if (FlatIdent_81225 == 1) then
				v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭飞行",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
			if (FlatIdent_81225 == 0) then
				v32 = false;
				v33 = nil;
				FlatIdent_81225 = 1;
			end
		end
	end
end});
local v34 = false;
v12:CreateToggle({Name="画质简化",CurrentValue=false,Flag="GraphicsSimplifiedToggle",Ext=true,Callback=function(v150)
	v34 = v150;
	if v150 then
		v7.GlobalShadows = false;
		v7.ShadowSoftness = 0;
		v7.Brightness = 2;
		pcall(function()
			local FlatIdent_91608 = 0;
			while true do
				if (FlatIdent_91608 == 1) then
					v7.SunRays.Enabled = false;
					v7.ColorCorrection.Enabled = false;
					FlatIdent_91608 = 2;
				end
				if (2 == FlatIdent_91608) then
					v7.DepthOfField.Enabled = false;
					break;
				end
				if (FlatIdent_91608 == 0) then
					v7.Bloom.Enabled = false;
					v7.Blur.Enabled = false;
					FlatIdent_91608 = 1;
				end
			end
		end);
		settings().Rendering.QualityLevel = 1;
		pcall(function()
			local FlatIdent_276C2 = 0;
			while true do
				if (FlatIdent_276C2 == 1) then
					v6.Terrain.WaterReflectance = 0;
					v6.Terrain.WaterTransparency = 0.5;
					break;
				end
				if (FlatIdent_276C2 == 0) then
					v6.Terrain.WaterWaveSize = 0;
					v6.Terrain.WaterWaveSpeed = 0;
					FlatIdent_276C2 = 1;
				end
			end
		end);
		v4:SetCore("SendNotification", {Title="功能提示",Text="已开启画质简化 (流畅模式)",Duration=2,Icon="rbxassetid://128981664025072"});
	else
		local FlatIdent_2435F = 0;
		while true do
			if (FlatIdent_2435F == 0) then
				v7.GlobalShadows = true;
				v7.ShadowSoftness = 1;
				FlatIdent_2435F = 1;
			end
			if (FlatIdent_2435F == 2) then
				settings().Rendering.QualityLevel = 10;
				pcall(function()
					v6.Terrain.WaterWaveSize = 5;
					v6.Terrain.WaterWaveSpeed = 10;
					v6.Terrain.WaterReflectance = 0.5;
					v6.Terrain.WaterTransparency = 0.5;
				end);
				FlatIdent_2435F = 3;
			end
			if (FlatIdent_2435F == 1) then
				v7.Brightness = 1;
				pcall(function()
					local FlatIdent_7F3C8 = 0;
					while true do
						if (FlatIdent_7F3C8 == 0) then
							v7.Bloom.Enabled = true;
							v7.Blur.Enabled = true;
							FlatIdent_7F3C8 = 1;
						end
						if (FlatIdent_7F3C8 == 2) then
							v7.DepthOfField.Enabled = true;
							break;
						end
						if (1 == FlatIdent_7F3C8) then
							v7.SunRays.Enabled = true;
							v7.ColorCorrection.Enabled = true;
							FlatIdent_7F3C8 = 2;
						end
					end
				end);
				FlatIdent_2435F = 2;
			end
			if (FlatIdent_2435F == 3) then
				v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭画质简化 (恢复原画质)",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end
end});
v12:CreateToggle({Name="快速互动",CurrentValue=false,Flag="QuickInteractToggle",Ext=true,Callback=function(v151)
	if v151 then
		local FlatIdent_7873D = 0;
		while true do
			if (FlatIdent_7873D == 0) then
				for v617, v618 in ipairs(v6:GetDescendants()) do
					if v618:IsA("ProximityPrompt") then
						v618.HoldDuration = 0;
					end
				end
				v4:SetCore("SendNotification", {Title="功能提示",Text="已开启快速互动",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	else
		local FlatIdent_8638E = 0;
		while true do
			if (FlatIdent_8638E == 0) then
				for v619, v620 in ipairs(v6:GetDescendants()) do
					if v620:IsA("ProximityPrompt") then
						v620.HoldDuration = 1;
					end
				end
				v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭快速互动",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end
end});
local v35 = nil;
v12:CreateToggle({Name="夜视",CurrentValue=false,Flag="NightVisionToggle",Ext=true,Callback=function(v152)
	if v152 then
		local FlatIdent_89852 = 0;
		while true do
			if (FlatIdent_89852 == 0) then
				if not v35 then
					v35 = v3.RenderStepped:Connect(function()
						v7.Ambient = Color3.new(1, 1, 1);
					end);
				end
				v4:SetCore("SendNotification", {Title="功能提示",Text="已开启夜视",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	else
		if v35 then
			local FlatIdent_8FBAE = 0;
			while true do
				if (FlatIdent_8FBAE == 0) then
					v35:Disconnect();
					v35 = nil;
					break;
				end
			end
		end
		v7.Ambient = Color3.new(0, 0, 0);
		v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭夜视",Duration=2,Icon="rbxassetid://128981664025072"});
	end
end});
local v36 = false;
local v37 = nil;
local function v38()
	local FlatIdent_44100 = 0;
	local v153;
	local v154;
	while true do
		if (FlatIdent_44100 == 1) then
			if not v153 then
				return;
			end
			v154 = v153:FindFirstChildWhichIsA("Humanoid");
			FlatIdent_44100 = 2;
		end
		if (FlatIdent_44100 == 0) then
			if not v36 then
				return;
			end
			v153 = v2.Character;
			FlatIdent_44100 = 1;
		end
		if (FlatIdent_44100 == 2) then
			if v154 then
				v154.NameDisplayDistance = 0;
			end
			for v483, v484 in pairs(v153:GetDescendants()) do
				if v484:IsA("BillboardGui") then
					for v647, v648 in pairs(v484:GetChildren()) do
						if (v648:IsA("TextLabel") and ((v648.Text == v2.Name) or (v648.Text == v2.DisplayName))) then
							v484:Destroy();
						end
					end
				end
			end
			break;
		end
	end
end
local function v39()
	if not v36 then
		local FlatIdent_4E551 = 0;
		local v556;
		while true do
			if (FlatIdent_4E551 == 0) then
				v556 = v2.Character;
				if v556 then
					local FlatIdent_10550 = 0;
					local v649;
					while true do
						if (0 == FlatIdent_10550) then
							v649 = v556:FindFirstChildWhichIsA("Humanoid");
							if v649 then
								v649.NameDisplayDistance = 10;
							end
							break;
						end
					end
				end
				break;
			end
		end
	end
end
v2.CharacterAdded:Connect(function()
	local FlatIdent_6EEC8 = 0;
	while true do
		if (0 == FlatIdent_6EEC8) then
			task.wait(0.5);
			if v36 then
				v38();
			else
				v39();
			end
			break;
		end
	end
end);
v12:CreateToggle({Name="隐藏名字(客户端)",CurrentValue=false,Flag="HideNameToggle",Ext=true,Callback=function(v155)
	local FlatIdent_11EF5 = 0;
	while true do
		if (FlatIdent_11EF5 == 0) then
			v36 = v155;
			if v155 then
				local FlatIdent_14AB1 = 0;
				while true do
					if (FlatIdent_14AB1 == 1) then
						v4:SetCore("SendNotification", {Title="功能提示",Text="已开启隐藏名字",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
					if (FlatIdent_14AB1 == 0) then
						v38();
						if not v37 then
							v37 = task.spawn(function()
								while v36 do
									task.wait(0.5);
									v38();
								end
							end);
						end
						FlatIdent_14AB1 = 1;
					end
				end
			else
				local FlatIdent_F26C = 0;
				while true do
					if (FlatIdent_F26C == 1) then
						v39();
						v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭隐藏名字",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
					if (FlatIdent_F26C == 0) then
						v36 = false;
						if v37 then
							local FlatIdent_77D12 = 0;
							while true do
								if (FlatIdent_77D12 == 0) then
									task.cancel(v37);
									v37 = nil;
									break;
								end
							end
						end
						FlatIdent_F26C = 1;
					end
				end
			end
			break;
		end
	end
end});
v12:CreateButton({Name="重置人物（自杀）",Ext=true,Callback=function()
	local FlatIdent_43525 = 0;
	local v156;
	while true do
		if (FlatIdent_43525 == 0) then
			v156 = v2;
			if (v156 and v156.Character and v156.Character:FindFirstChild("Humanoid")) then
				local FlatIdent_31077 = 0;
				while true do
					if (FlatIdent_31077 == 0) then
						v156.Character.Humanoid.Health = 0;
						v4:SetCore("SendNotification", {Title="功能提示",Text="已执行重置人物",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			else
				v4:SetCore("SendNotification", {Title="错误提示",Text="未找到角色",Duration=2,Icon="rbxassetid://128981664025072"});
			end
			break;
		end
	end
end});
local v40 = nil;
v13:CreateToggle({Name="自动百抽",CurrentValue=false,Flag="AutoGachaToggle",Ext=true,Callback=function(v157)
	if v157 then
		if not v40 then
			local FlatIdent_421B1 = 0;
			while true do
				if (FlatIdent_421B1 == 0) then
					v40 = v3.RenderStepped:Connect(function()
						local FlatIdent_7CA52 = 0;
						local v666;
						while true do
							if (FlatIdent_7CA52 == 0) then
								v666 = v5.GachaSkins;
								v666:FireServer("100Spins");
								FlatIdent_7CA52 = 1;
							end
							if (FlatIdent_7CA52 == 1) then
								task.wait(15);
								break;
							end
						end
					end);
					v4:SetCore("SendNotification", {Title="功能提示",Text="已开启自动百抽",Duration=2,Icon="rbxassetid://128981664025072"});
					break;
				end
			end
		end
	elseif v40 then
		local FlatIdent_835BC = 0;
		while true do
			if (FlatIdent_835BC == 1) then
				v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭自动百抽",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
			if (0 == FlatIdent_835BC) then
				v40:Disconnect();
				v40 = nil;
				FlatIdent_835BC = 1;
			end
		end
	end
end});
local function v41()
	local FlatIdent_67F21 = 0;
	local v158;
	while true do
		if (FlatIdent_67F21 == 0) then
			v158 = v6:FindFirstChild("HelicopterShop");
			if v158 then
				local FlatIdent_656E9 = 0;
				local v558;
				while true do
					if (FlatIdent_656E9 == 0) then
						v558 = v158:FindFirstChild("ShopXDD");
						if v558 then
							local FlatIdent_1BA2F = 0;
							local v650;
							while true do
								if (FlatIdent_1BA2F == 0) then
									v650 = v558:FindFirstChild("PartForShop");
									if (v650 and v650:IsA("BasePart")) then
										local FlatIdent_1512 = 0;
										local v682;
										local v683;
										while true do
											if (FlatIdent_1512 == 1) then
												return v683 < 100;
											end
											if (0 == FlatIdent_1512) then
												v682 = v650.Position;
												v683 = math.sqrt(((v682.X - 10.23) ^ 2) + ((v682.Y - 8.55) ^ 2) + ((v682.Z + 81.34) ^ 2));
												FlatIdent_1512 = 1;
											end
										end
									end
									break;
								end
							end
						end
						break;
					end
				end
			end
			FlatIdent_67F21 = 1;
		end
		if (FlatIdent_67F21 == 1) then
			return false;
		end
	end
end
local v42 = nil;
local v43 = false;
local function v44()
	local FlatIdent_7C9E = 0;
	local v159;
	while true do
		if (FlatIdent_7C9E == 2) then
			v4:SetCore("SendNotification", {Title="自动化",Text="丧尸刷级已停止",Duration=2,Icon="rbxassetid://128981664025072"});
			break;
		end
		if (FlatIdent_7C9E == 1) then
			v159 = v2.Character and v2.Character:FindFirstChild("HumanoidRootPart");
			if v159 then
				for v621, v622 in ipairs(v159:GetChildren()) do
					if v622:IsA("BodyGyro") then
						v622:Destroy();
					end
				end
			end
			FlatIdent_7C9E = 2;
		end
		if (FlatIdent_7C9E == 0) then
			v43 = false;
			if v42 then
				local FlatIdent_1DFAF = 0;
				while true do
					if (FlatIdent_1DFAF == 0) then
						task.cancel(v42);
						v42 = nil;
						break;
					end
				end
			end
			FlatIdent_7C9E = 1;
		end
	end
end
v13:CreateToggle({Name="自动刷级(丧尸)",CurrentValue=false,Flag="ZombieFarmToggle",Ext=true,Callback=function(v160)
	if v160 then
		if not v43 then
			v43 = true;
			v42 = task.spawn(function()
				while v43 do
					local v684 = v5:WaitForChild("LMB");
					local v685 = v5:WaitForChild("ShopSystem");
					local v686 = v5:WaitForChild("ReturnToLobby");
					local v687, v688;
					local v689 = nil;
					local v690 = nil;
					local v691 = nil;
					local function v692()
						local FlatIdent_1BB5D = 0;
						local v720;
						while true do
							if (FlatIdent_1BB5D == 3) then
								v688.Parent = v687;
								break;
							end
							if (FlatIdent_1BB5D == 1) then
								if v687:FindFirstChild("BodyGyro") then
									v687.BodyGyro:Destroy();
								end
								v688 = Instance.new("BodyGyro");
								FlatIdent_1BB5D = 2;
							end
							if (FlatIdent_1BB5D == 2) then
								v688.MaxTorque = Vector3.new(100000000, 100000000, 100000000);
								v688.P = 25000;
								FlatIdent_1BB5D = 3;
							end
							if (FlatIdent_1BB5D == 0) then
								v720 = v2.Character or v2.CharacterAdded:Wait();
								v687 = v720:WaitForChild("HumanoidRootPart");
								FlatIdent_1BB5D = 1;
							end
						end
					end
					local function v693()
						local v724 = v6:FindFirstChild("Living");
						if not v724 then
							return nil;
						end
						for v741, v742 in pairs(v724:GetChildren()) do
							if (v742:IsA("Model") and v742:FindFirstChild("Humanoid") and v742:FindFirstChild("HumanoidRootPart")) then
								local FlatIdent_6EF7B = 0;
								local v758;
								while true do
									if (FlatIdent_6EF7B == 0) then
										v758 = v742.Humanoid;
										if (v758.Health > 0) then
											local FlatIdent_84D38 = 0;
											local v766;
											while true do
												if (0 == FlatIdent_84D38) then
													v766 = string.lower(v742.Name);
													if (string.sub(v766, 1, 6) == "zombie") then
														return v742;
													end
													break;
												end
											end
										end
										break;
									end
								end
							end
						end
						return nil;
					end
					local function v694()
						local FlatIdent_5CA49 = 0;
						while true do
							if (1 == FlatIdent_5CA49) then
								v691 = v3.Heartbeat:Connect(function()
									local FlatIdent_508D4 = 0;
									local v743;
									local v744;
									local v745;
									local v746;
									while true do
										if (FlatIdent_508D4 == 3) then
											v746 = v744.Position;
											v687.CFrame = CFrame.new(v746 + Vector3.new(0, 11, 0), v746 - Vector3.new(0, 28, 0));
											FlatIdent_508D4 = 4;
										end
										if (FlatIdent_508D4 == 2) then
											v745 = v2.Character;
											if not (v745 and v687 and v744) then
												return;
											end
											FlatIdent_508D4 = 3;
										end
										if (FlatIdent_508D4 == 0) then
											v743 = v693();
											if not v743 then
												local FlatIdent_11AA1 = 0;
												while true do
													if (FlatIdent_11AA1 == 0) then
														v689 = nil;
														return;
													end
												end
											end
											FlatIdent_508D4 = 1;
										end
										if (FlatIdent_508D4 == 4) then
											if (v743.Humanoid.Health > 0) then
												v684:FireServer();
											end
											break;
										end
										if (1 == FlatIdent_508D4) then
											v689 = v743;
											v744 = v743:FindFirstChild("HumanoidRootPart");
											FlatIdent_508D4 = 2;
										end
									end
								end);
								break;
							end
							if (FlatIdent_5CA49 == 0) then
								if v691 then
									return;
								end
								v690 = v3.RenderStepped:Connect(function()
									if (v689 and v689:FindFirstChild("HumanoidRootPart")) then
										local FlatIdent_90E07 = 0;
										local v759;
										while true do
											if (FlatIdent_90E07 == 0) then
												v759 = v689.HumanoidRootPart;
												v688.CFrame = CFrame.lookAt(v687.Position, v759.Position - Vector3.new(0, 28, 0));
												break;
											end
										end
									end
								end);
								FlatIdent_5CA49 = 1;
							end
						end
					end
					local function v695()
						local FlatIdent_84478 = 0;
						while true do
							if (FlatIdent_84478 == 0) then
								if v691 then
									local FlatIdent_5B7B7 = 0;
									while true do
										if (FlatIdent_5B7B7 == 0) then
											v691:Disconnect();
											v691 = nil;
											break;
										end
									end
								end
								if v690 then
									v690:Disconnect();
									v690 = nil;
								end
								FlatIdent_84478 = 1;
							end
							if (FlatIdent_84478 == 1) then
								v689 = nil;
								break;
							end
						end
					end
					v5:WaitForChild("Vote"):FireServer("Zombie");
					if not v43 then
						break;
					end
					local v696 = v2.Character or v2.CharacterAdded:Wait();
					local v697 = v696:WaitForChild("Humanoid");
					v697:Move(Vector3.new(0, 0, -1), true);
					local v698 = tick();
					while ((tick() - v698) < 10) and v43 do
						task.wait();
					end
					v697:Move(Vector3.new(0, 0, 0), true);
					if not v43 then
						break;
					end
					v5:WaitForChild("GetReadyRemote"):FireServer("1", true);
					v692();
					v2.CharacterAdded:Connect(v692);
					v694();
					local v699 = 0;
					local v700 = false;
					while (v699 < 5) and v43 do
						local FlatIdent_15F29 = 0;
						local v725;
						while true do
							if (FlatIdent_15F29 == 0) then
								task.wait(0.5);
								v725 = v41();
								FlatIdent_15F29 = 1;
							end
							if (FlatIdent_15F29 == 1) then
								if (v725 and not v700) then
									local FlatIdent_5CC3B = 0;
									while true do
										if (0 == FlatIdent_5CC3B) then
											v699 = v699 + 1;
											v685:FireServer("Buy", "FillHP");
											break;
										end
									end
								end
								v700 = v725;
								break;
							end
						end
					end
					if not v43 then
						break;
					end
					task.wait(1);
					v685:FireServer("Buy", "FillHP");
					task.wait(2);
					v686:FireServer();
					v695();
					if not v43 then
						break;
					end
					task.wait(10);
				end
			end);
			v4:SetCore("SendNotification", {Title="自动化",Text="丧尸模式已启动",Duration=2,Icon="rbxassetid://128981664025072"});
		end
	else
		v44();
	end
end});
local v45 = nil;
local v46 = false;
local function v47()
	local FlatIdent_6E213 = 0;
	local v161;
	while true do
		if (FlatIdent_6E213 == 0) then
			v46 = false;
			if v45 then
				local FlatIdent_64B9B = 0;
				while true do
					if (FlatIdent_64B9B == 0) then
						task.cancel(v45);
						v45 = nil;
						break;
					end
				end
			end
			FlatIdent_6E213 = 1;
		end
		if (FlatIdent_6E213 == 1) then
			v161 = v2.Character and v2.Character:FindFirstChild("HumanoidRootPart");
			if v161 then
				for v623, v624 in ipairs(v161:GetChildren()) do
					if v624:IsA("BodyGyro") then
						v624:Destroy();
					end
				end
			end
			FlatIdent_6E213 = 2;
		end
		if (2 == FlatIdent_6E213) then
			v4:SetCore("SendNotification", {Title="自动化",Text="圣诞模式已停止",Duration=2,Icon="rbxassetid://128981664025072"});
			break;
		end
	end
end
v13:CreateToggle({Name="自动刷等级(圣诞)",CurrentValue=false,Flag="XmasLoopToggle",Ext=true,Callback=function(v162)
	if v162 then
		if not v46 then
			v46 = true;
			v45 = task.spawn(function()
				while v46 do
					local v701 = v5:WaitForChild("LMB");
					local v702 = v5:WaitForChild("ShopSystem");
					local v703 = v5:WaitForChild("ReturnToLobby");
					local v704, v705;
					local v706 = nil;
					local v707 = nil;
					local v708 = nil;
					local function v709()
						local FlatIdent_253F0 = 0;
						local v726;
						while true do
							if (0 == FlatIdent_253F0) then
								v726 = v2.Character or v2.CharacterAdded:Wait();
								v704 = v726:WaitForChild("HumanoidRootPart");
								FlatIdent_253F0 = 1;
							end
							if (1 == FlatIdent_253F0) then
								if v704:FindFirstChild("BodyGyro") then
									v704.BodyGyro:Destroy();
								end
								v705 = Instance.new("BodyGyro");
								FlatIdent_253F0 = 2;
							end
							if (FlatIdent_253F0 == 2) then
								v705.MaxTorque = Vector3.new(100000000, 100000000, 100000000);
								v705.P = 25000;
								FlatIdent_253F0 = 3;
							end
							if (FlatIdent_253F0 == 3) then
								v705.Parent = v704;
								break;
							end
						end
					end
					local function v710(v730)
						local FlatIdent_23B66 = 0;
						local v731;
						while true do
							if (FlatIdent_23B66 == 1) then
								for v748, v749 in pairs(v731:GetChildren()) do
									if (v749:IsA("Model") and v749:FindFirstChild("Humanoid") and v749:FindFirstChild("HumanoidRootPart")) then
										local FlatIdent_30B1F = 0;
										local v761;
										while true do
											if (FlatIdent_30B1F == 0) then
												v761 = v749.Humanoid;
												if (v761.Health > 0) then
													local v767 = string.lower(v749.Name);
													if ((v730 == "speaker") and (string.sub(v767, 1, 7) == "speaker")) then
														return v749;
													elseif ((v730 == "rocket") and (string.sub(v767, 1, 6) == "rocket")) then
														return v749;
													elseif ((v730 == "snowsoldierrocket") and (v767 == "snow soldier rocket toilet")) then
														return v749;
													elseif ((v730 == "snow") and (string.sub(v767, 1, 4) == "snow") and (v767 ~= "snow soldier rocket toilet")) then
														return v749;
													end
												end
												break;
											end
										end
									end
								end
								return nil;
							end
							if (FlatIdent_23B66 == 0) then
								v731 = v6:FindFirstChild("Living");
								if not v731 then
									return nil;
								end
								FlatIdent_23B66 = 1;
							end
						end
					end
					local function v711()
						local FlatIdent_5014E = 0;
						while true do
							if (FlatIdent_5014E == 1) then
								v708 = v3.Heartbeat:Connect(function()
									local FlatIdent_8CB90 = 0;
									local v750;
									local v751;
									local v752;
									local v753;
									while true do
										if (FlatIdent_8CB90 == 0) then
											v750 = v710("speaker") or v710("rocket") or v710("snowsoldierrocket") or v710("snow");
											if not v750 then
												v706 = nil;
												return;
											end
											FlatIdent_8CB90 = 1;
										end
										if (FlatIdent_8CB90 == 3) then
											v753 = v751.Position;
											v704.CFrame = CFrame.new(v753 + Vector3.new(0, 11, 0), v753 - Vector3.new(0, 28, 0));
											FlatIdent_8CB90 = 4;
										end
										if (FlatIdent_8CB90 == 2) then
											v752 = v2.Character;
											if not (v752 and v704 and v751) then
												return;
											end
											FlatIdent_8CB90 = 3;
										end
										if (4 == FlatIdent_8CB90) then
											if (v750.Humanoid.Health > 0) then
												v701:FireServer();
											end
											break;
										end
										if (FlatIdent_8CB90 == 1) then
											v706 = v750;
											v751 = v750:FindFirstChild("HumanoidRootPart");
											FlatIdent_8CB90 = 2;
										end
									end
								end);
								break;
							end
							if (FlatIdent_5014E == 0) then
								if v708 then
									return;
								end
								v707 = v3.RenderStepped:Connect(function()
									if (v706 and v706:FindFirstChild("HumanoidRootPart")) then
										local v762 = v706.HumanoidRootPart;
										v705.CFrame = CFrame.lookAt(v704.Position, v762.Position - Vector3.new(0, 28, 0));
									end
								end);
								FlatIdent_5014E = 1;
							end
						end
					end
					local function v712()
						local FlatIdent_34A87 = 0;
						while true do
							if (FlatIdent_34A87 == 0) then
								if v708 then
									local FlatIdent_4BE81 = 0;
									while true do
										if (FlatIdent_4BE81 == 0) then
											v708:Disconnect();
											v708 = nil;
											break;
										end
									end
								end
								if v707 then
									local FlatIdent_9525B = 0;
									while true do
										if (FlatIdent_9525B == 0) then
											v707:Disconnect();
											v707 = nil;
											break;
										end
									end
								end
								FlatIdent_34A87 = 1;
							end
							if (FlatIdent_34A87 == 1) then
								v706 = nil;
								break;
							end
						end
					end
					v5:WaitForChild("Vote"):FireServer("Christmas");
					if not v46 then
						break;
					end
					local v713 = v2.Character or v2.CharacterAdded:Wait();
					local v714 = v713:WaitForChild("Humanoid");
					v714:Move(Vector3.new(0, 0, -1), true);
					local v715 = tick();
					while ((tick() - v715) < 10) and v46 do
						task.wait();
					end
					v714:Move(Vector3.new(0, 0, 0), true);
					if not v46 then
						break;
					end
					v5:WaitForChild("GetReadyRemote"):FireServer("1", true);
					v709();
					v2.CharacterAdded:Connect(v709);
					v711();
					local v716 = 0;
					local v717 = false;
					while (v716 < 5) and v46 do
						local FlatIdent_92D76 = 0;
						local v732;
						while true do
							if (FlatIdent_92D76 == 0) then
								task.wait(0.5);
								v732 = v41();
								FlatIdent_92D76 = 1;
							end
							if (FlatIdent_92D76 == 1) then
								if (v732 and not v717) then
									local FlatIdent_6F79E = 0;
									while true do
										if (FlatIdent_6F79E == 0) then
											v716 = v716 + 1;
											v702:FireServer("Buy", "FillHP");
											break;
										end
									end
								end
								v717 = v732;
								break;
							end
						end
					end
					if not v46 then
						break;
					end
					task.wait(1);
					v702:FireServer("Buy", "FillHP");
					task.wait(2);
					v703:FireServer();
					v712();
					if not v46 then
						break;
					end
					task.wait(10);
				end
			end);
			v4:SetCore("SendNotification", {Title="自动化",Text="圣诞模式已启动",Duration=2,Icon="rbxassetid://128981664025072"});
		end
	else
		v47();
	end
end});
local v48 = nil;
local v49 = false;
local function v50()
	local FlatIdent_91A09 = 0;
	local v163;
	while true do
		if (FlatIdent_91A09 == 1) then
			v163 = v2.Character and v2.Character:FindFirstChild("HumanoidRootPart");
			if v163 then
				for v625, v626 in ipairs(v163:GetChildren()) do
					if (v626:IsA("BodyVelocity") or v626:IsA("BodyGyro")) then
						v626:Destroy();
					end
				end
			end
			FlatIdent_91A09 = 2;
		end
		if (FlatIdent_91A09 == 0) then
			v49 = false;
			if v48 then
				local FlatIdent_5C0FA = 0;
				while true do
					if (FlatIdent_5C0FA == 0) then
						task.cancel(v48);
						v48 = nil;
						break;
					end
				end
			end
			FlatIdent_91A09 = 1;
		end
		if (FlatIdent_91A09 == 2) then
			v4:SetCore("SendNotification", {Title="自动化",Text="天文模式已停止",Duration=2,Icon="rbxassetid://128981664025072"});
			break;
		end
	end
end
local function v51()
	local v164 = v2;
	local v165 = v5;
	local v166 = v165:WaitForChild("Buff");
	local v167 = v165:WaitForChild("Vote");
	local v168 = v165:WaitForChild("GetReadyRemote");
	local v169 = v164.Character;
	if not v169 then
		v169 = v164.CharacterAdded:Wait();
	end
	local v170 = v169:WaitForChild("HumanoidRootPart");
	local v171 = v169:WaitForChild("Humanoid");
	local v172 = true;
	local v173 = 0;
	spawn(function()
		while v172 and v49 do
			pcall(function()
				if (v169 and v171 and (v171.Health > 0)) then
					if ((v171.Health <= (v171.MaxHealth / 2)) and ((tick() - v173) > 5)) then
						local FlatIdent_42B8B = 0;
						while true do
							if (FlatIdent_42B8B == 0) then
								v166:FireServer();
								v173 = tick();
								break;
							end
						end
					end
				end
			end);
			task.wait(0.1);
			if not v49 then
				break;
			end
		end
	end);
	local v174 = tick() + 10;
	while (tick() < v174) and v49 do
		local FlatIdent_2B4B0 = 0;
		while true do
			if (FlatIdent_2B4B0 == 0) then
				v167:FireServer("AstroV2");
				task.wait();
				break;
			end
		end
	end
	if not v49 then
		return;
	end
	v168:FireServer("1", true);
	local v175 = tick();
	while ((tick() - v175) < 71) and v49 do
		task.wait(1);
	end
	if not v49 then
		return;
	end
	v169 = v164.Character;
	if not v169 then
		local FlatIdent_1077D = 0;
		while true do
			if (0 == FlatIdent_1077D) then
				v172 = false;
				return;
			end
		end
	end
	v170 = v169:WaitForChild("HumanoidRootPart");
	local v177 = {Vector3.new(-666.88, 296.16, -541.21),Vector3.new(490, 295.81, -541.63),Vector3.new(490.42, 296.16, 487.95),Vector3.new(-667.22, 296.21, 488.04)};
	local v178 = Vector3.new(-22.88, 2.71, -1.34);
	local v179 = 900;
	local v180 = 530;
	local v181 = 5;
	local v182 = Instance.new("BodyVelocity", v170);
	v182.MaxForce = Vector3.new(100000000, 100000000, 100000000);
	v182.Velocity = Vector3.zero;
	v182.P = 20000;
	local v187 = Instance.new("BodyGyro", v170);
	v187.MaxTorque = Vector3.new(100000000, 100000000, 100000000);
	v187.P = 20000;
	v187.CFrame = v170.CFrame;
	local function v192(v485)
		local FlatIdent_3BCFD = 0;
		local v486;
		local v487;
		while true do
			if (FlatIdent_3BCFD == 1) then
				while (v486 > v181) and v49 do
					local v559 = v170.Position;
					local v560 = (v485 - v559).Unit;
					v182.Velocity = v560 * v180;
					local v562 = Vector3.new(v560.X, 0, v560.Z);
					if (v562.Magnitude > 0) then
						v187.CFrame = CFrame.lookAt(v559, v559 + v562);
					end
					task.wait();
					if not v49 then
						break;
					end
					local v563 = (v485 - v170.Position).Magnitude;
					if (math.abs(v563 - v486) < 0.5) then
						v487 = v487 + 1;
					else
						v487 = 0;
					end
					if (v487 > 30) then
						break;
					end
					v486 = v563;
				end
				v182.Velocity = Vector3.zero;
				break;
			end
			if (FlatIdent_3BCFD == 0) then
				v486 = (v485 - v170.Position).Magnitude;
				v487 = 0;
				FlatIdent_3BCFD = 1;
			end
		end
	end
	local v193 = tick();
	while ((tick() - v193) < v179) and v49 do
		for v564, v565 in ipairs(v177) do
			v192(v565);
			if (((tick() - v193) >= v179) or not v49) then
				break;
			end
			task.wait(0.02);
		end
	end
	pcall(function()
		if v182 then
			v182:Destroy();
		end
	end);
	pcall(function()
		if v187 then
			v187:Destroy();
		end
	end);
	v169 = v164.Character;
	if (v169 and v169:FindFirstChild("HumanoidRootPart")) then
		v169.HumanoidRootPart.CFrame = CFrame.new(v178);
	end
	v172 = false;
end
v13:CreateToggle({Name="自动通关天文模式",CurrentValue=false,Flag="AutoLoopToggle",Ext=true,Callback=function(v194)
	if v194 then
		if not v49 then
			local FlatIdent_85FF9 = 0;
			while true do
				if (FlatIdent_85FF9 == 0) then
					v49 = true;
					v48 = task.spawn(function()
						while v49 do
							v51();
							if not v49 then
								break;
							end
							task.wait(5);
						end
					end);
					FlatIdent_85FF9 = 1;
				end
				if (FlatIdent_85FF9 == 1) then
					v4:SetCore("SendNotification", {Title="自动化",Text="开跑了",Duration=2,Icon="rbxassetid://128981664025072"});
					break;
				end
			end
		end
	else
		v50();
	end
end});
local v52 = false;
local v53 = {};
local v54 = {};
local v55 = nil;
local v56 = nil;
local function v57()
	local FlatIdent_FC26 = 0;
	local v195;
	while true do
		if (FlatIdent_FC26 == 1) then
			return v195;
		end
		if (FlatIdent_FC26 == 0) then
			v195 = {};
			for v490, v491 in pairs(v1:GetPlayers()) do
				local FlatIdent_80652 = 0;
				while true do
					if (FlatIdent_80652 == 0) then
						v195[v491.Name] = true;
						v195[v491.DisplayName] = true;
						break;
					end
				end
			end
			FlatIdent_FC26 = 1;
		end
	end
end
local v58 = v57();
v1.PlayerAdded:Connect(function()
	v58 = v57();
end);
v1.PlayerRemoving:Connect(function()
	v58 = v57();
end);
local function v59(v196)
	local FlatIdent_2A1A = 0;
	local v197;
	while true do
		if (0 == FlatIdent_2A1A) then
			if (not v196 or not v196:IsA("Model")) then
				return false;
			end
			if v1:GetPlayerFromCharacter(v196) then
				return true;
			end
			FlatIdent_2A1A = 1;
		end
		if (FlatIdent_2A1A == 1) then
			if v58[v196.Name] then
				return true;
			end
			if (v196 == v2.Character) then
				return true;
			end
			FlatIdent_2A1A = 2;
		end
		if (3 == FlatIdent_2A1A) then
			return false;
		end
		if (FlatIdent_2A1A == 2) then
			v197 = v196:FindFirstChild("Humanoid");
			if (v197 and v197:FindFirstChild("DisplayName")) then
				return true;
			end
			FlatIdent_2A1A = 3;
		end
	end
end
local function v60(v198)
	local FlatIdent_5960E = 0;
	local v199;
	local v200;
	local v206;
	local v218;
	while true do
		if (FlatIdent_5960E == 2) then
			v200.StudsOffset = Vector3.new(0, 2.5, 0);
			v200.AlwaysOnTop = true;
			v200.Parent = v198;
			FlatIdent_5960E = 3;
		end
		if (FlatIdent_5960E == 6) then
			v206.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
			v218 = Instance.new("TextLabel", v200);
			v218.Size = UDim2.new(1, 0, 0.4, 0);
			FlatIdent_5960E = 7;
		end
		if (FlatIdent_5960E == 1) then
			v200 = Instance.new("BillboardGui");
			v200.Adornee = v199;
			v200.Size = UDim2.new(0, 120, 0, 40);
			FlatIdent_5960E = 2;
		end
		if (FlatIdent_5960E == 3) then
			v206 = Instance.new("TextLabel", v200);
			v206.Size = UDim2.new(1, 0, 0.6, 0);
			v206.Position = UDim2.new(0, 0, 0, 0);
			FlatIdent_5960E = 4;
		end
		if (FlatIdent_5960E == 0) then
			if v54[v198] then
				return;
			end
			v199 = v198:FindFirstChild("HumanoidRootPart") or v198:FindFirstChildWhichIsA("BasePart");
			if not v199 then
				return;
			end
			FlatIdent_5960E = 1;
		end
		if (FlatIdent_5960E == 8) then
			v218.TextColor3 = Color3.fromRGB(200, 200, 200);
			v218.TextSize = 9;
			v218.Font = Enum.Font.Gotham;
			FlatIdent_5960E = 9;
		end
		if (FlatIdent_5960E == 4) then
			v206.BackgroundTransparency = 1;
			v206.Text = v198.Name;
			v206.TextColor3 = Color3.fromRGB(255, 255, 0);
			FlatIdent_5960E = 5;
		end
		if (FlatIdent_5960E == 9) then
			v218.TextStrokeTransparency = 0.3;
			v218.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
			v54[v198] = {name=v206,dist=v218};
			break;
		end
		if (FlatIdent_5960E == 5) then
			v206.TextSize = 11;
			v206.Font = Enum.Font.GothamBold;
			v206.TextStrokeTransparency = 0.3;
			FlatIdent_5960E = 6;
		end
		if (FlatIdent_5960E == 7) then
			v218.Position = UDim2.new(0, 0, 0.6, 0);
			v218.BackgroundTransparency = 1;
			v218.Text = "0m";
			FlatIdent_5960E = 8;
		end
	end
end
local function v61(v230)
	if v54[v230] then
		local FlatIdent_1C192 = 0;
		local v567;
		while true do
			if (FlatIdent_1C192 == 0) then
				v567 = v54[v230].name.Parent;
				if v567 then
					v567:Destroy();
				end
				FlatIdent_1C192 = 1;
			end
			if (1 == FlatIdent_1C192) then
				v54[v230] = nil;
				break;
			end
		end
	end
end
local function v62(v231)
	local FlatIdent_2458 = 0;
	local v232;
	local v233;
	while true do
		if (FlatIdent_2458 == 4) then
			v233.Parent = v231;
			v53[v231] = v233;
			v60(v231);
			break;
		end
		if (FlatIdent_2458 == 1) then
			v232 = v231:FindFirstChildWhichIsA("Humanoid");
			if not v232 then
				return;
			end
			if (v232.Health <= 0) then
				return;
			end
			FlatIdent_2458 = 2;
		end
		if (FlatIdent_2458 == 0) then
			if v53[v231] then
				return;
			end
			if (not v231 or not v231:IsA("Model")) then
				return;
			end
			if v59(v231) then
				return;
			end
			FlatIdent_2458 = 1;
		end
		if (FlatIdent_2458 == 3) then
			v233.OutlineColor = Color3.fromRGB(255, 255, 255);
			v233.FillTransparency = 0.7;
			v233.OutlineTransparency = 0.5;
			FlatIdent_2458 = 4;
		end
		if (FlatIdent_2458 == 2) then
			v233 = Instance.new("Highlight");
			v233.Adornee = v231;
			v233.FillColor = Color3.fromRGB(255, 255, 255);
			FlatIdent_2458 = 3;
		end
	end
end
local function v63(v241)
	local FlatIdent_3B653 = 0;
	while true do
		if (FlatIdent_3B653 == 0) then
			if v53[v241] then
				local FlatIdent_7C8D9 = 0;
				while true do
					if (FlatIdent_7C8D9 == 0) then
						v53[v241]:Destroy();
						v53[v241] = nil;
						break;
					end
				end
			end
			v61(v241);
			break;
		end
	end
end
local function v64()
	local FlatIdent_69486 = 0;
	while true do
		if (FlatIdent_69486 == 0) then
			for v494, v495 in pairs(v53) do
				v63(v494);
			end
			for v496, v497 in pairs(v54) do
				v61(v496);
			end
			break;
		end
	end
end
local function v65()
	local FlatIdent_36665 = 0;
	local v242;
	while true do
		if (FlatIdent_36665 == 0) then
			v64();
			if not v52 then
				return;
			end
			FlatIdent_36665 = 1;
		end
		if (FlatIdent_36665 == 2) then
			if not v242 then
				return;
			end
			for v498, v499 in pairs(v242:GetChildren()) do
				if (v499:IsA("Model") and not v59(v499)) then
					v62(v499);
				end
			end
			break;
		end
		if (FlatIdent_36665 == 1) then
			v58 = v57();
			v242 = v6:FindFirstChild("Living");
			FlatIdent_36665 = 2;
		end
	end
end
local function v66()
	local FlatIdent_43D4D = 0;
	local v243;
	while true do
		if (0 == FlatIdent_43D4D) then
			if not v52 then
				return;
			end
			v243 = v2.Character and v2.Character:FindFirstChild("HumanoidRootPart");
			FlatIdent_43D4D = 1;
		end
		if (FlatIdent_43D4D == 1) then
			if not v243 then
				return;
			end
			for v500, v501 in pairs(v54) do
				if (v501 and v501.dist and v501.dist.Parent) then
					local FlatIdent_185A5 = 0;
					local v627;
					while true do
						if (0 == FlatIdent_185A5) then
							v627 = v500:FindFirstChild("HumanoidRootPart") or v500:FindFirstChildWhichIsA("BasePart");
							if v627 then
								local v667 = (v243.Position - v627.Position).Magnitude;
								v501.dist.Text = string.format("%.1fm", v667);
							end
							break;
						end
					end
				end
			end
			break;
		end
	end
end
local v67 = v6:FindFirstChild("Living");
if v67 then
	v56 = v67.ChildAdded:Connect(function(v570)
		local FlatIdent_4CEEC = 0;
		while true do
			if (FlatIdent_4CEEC == 0) then
				task.wait(0.3);
				if (v52 and v570:IsA("Model") and not v59(v570)) then
					v62(v570);
				end
				break;
			end
		end
	end);
end
local v68 = false;
local v69 = Vector3.new(429.45, -620.79, 335.26);
local v70 = Vector3.new(1490.1, 5.45, 1315.1);
local v71 = {"Head Captain Of The CCTV",0};
local v72;
task.spawn(function()
	pcall(function()
		v72 = v5:WaitForChild("ForChangeCharacter", 5);
	end);
end);
v2.CharacterAdded:Connect(function(v244)
	local FlatIdent_67408 = 0;
	while true do
		if (FlatIdent_67408 == 0) then
			task.wait(0.3);
			if (v68 and v244:FindFirstChild("HumanoidRootPart")) then
				v244.HumanoidRootPart.CFrame = CFrame.new(v70);
			end
			break;
		end
	end
end);
v14:CreateSection("特殊泰坦");
v14:CreateButton({Name="泰坦电视2.0",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_79F35 = 0;
		while true do
			if (FlatIdent_79F35 == 0) then
				v5.ForChangeCharacter:FireServer("Upgraded Titan TV", 1);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 泰坦电视2.0",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v14:CreateButton({Name="泰坦音响2.0",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_91CC4 = 0;
		while true do
			if (FlatIdent_91CC4 == 0) then
				v5.ForChangeCharacter:FireServer("Upgraded Titan Speaker", 1);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 泰坦音响2.0",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v14:CreateButton({Name="泰坦监控2.0",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_C758 = 0;
		while true do
			if (FlatIdent_C758 == 0) then
				v5.ForChangeCharacter:FireServer("Upgraded Titan Cameraman", 1);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 泰坦监控2.0",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v14:CreateButton({Name="泰坦时钟",Ext=true,Callback=function()
	pcall(function()
		v5.ForChangeCharacter:FireServer("Clock Titan", 0);
		v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 泰坦时钟",Duration=2,Icon="rbxassetid://128981664025072"});
	end);
end});
v14:CreateButton({Name="x18",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_602BB = 0;
		while true do
			if (FlatIdent_602BB == 0) then
				v5.ForChangeCharacter:FireServer("G-Toilet Z", 0);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 x18",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v14:CreateButton({Name="塞壬",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_376BD = 0;
		while true do
			if (FlatIdent_376BD == 0) then
				v5.ForChangeCharacter:FireServer("Siren Titan", 0);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 塞壬",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v15:CreateSection("角色");
v15:CreateButton({Name="天文大电视",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_6038 = 0;
		while true do
			if (FlatIdent_6038 == 0) then
				v5.ForChangeCharacter:FireServer("Astro Large TV man", 0);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 天文大电视",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v15:CreateButton({Name="故障",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_2F3FA = 0;
		while true do
			if (FlatIdent_2F3FA == 0) then
				v5.ForChangeCharacter:FireServer("Glitch Double plunger", 0);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 故障",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v15:CreateButton({Name="反派",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_1FA0 = 0;
		while true do
			if (0 == FlatIdent_1FA0) then
				v5.ForChangeCharacter:FireServer("Brown Camera man", 1);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 反派",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v15:CreateButton({Name="音队",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_2B407 = 0;
		while true do
			if (FlatIdent_2B407 == 0) then
				v5.ForChangeCharacter:FireServer("Dark Speakerman", 2);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 音队",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v15:CreateButton({Name="首席时钟",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_7EE98 = 0;
		while true do
			if (FlatIdent_7EE98 == 0) then
				v5.ForChangeCharacter:FireServer("Clock Man", 0);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 首席时钟",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v15:CreateButton({Name="女三体",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_86A91 = 0;
		while true do
			if (FlatIdent_86A91 == 0) then
				v5.ForChangeCharacter:FireServer("Tri Soldier Athena (Girl)", 0);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 女三体",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v15:CreateButton({Name="山本",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_76563 = 0;
		while true do
			if (FlatIdent_76563 == 0) then
				v5.ForChangeCharacter:FireServer("Head Captain Of The CCTV", 0);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 山本",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v15:CreateButton({Name="普罗米修斯",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_285D = 0;
		while true do
			if (FlatIdent_285D == 0) then
				v5.ForChangeCharacter:FireServer("Prometheus", 0);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 普罗米修斯",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v15:CreateButton({Name="女监控2.0",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_354BC = 0;
		while true do
			if (0 == FlatIdent_354BC) then
				v5.ForChangeCharacter:FireServer("Camera woman 2.0", 0);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 女监控2.0",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v15:CreateButton({Name="DJ2.0",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_54C85 = 0;
		while true do
			if (FlatIdent_54C85 == 0) then
				v5.ForChangeCharacter:FireServer("DJ Toilet 2.0", 0);
				v4:SetCore("SendNotification", {Title="角色切换",Text="已切换至 DJ2.0",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v16:CreateButton({Name="点击进入私服",Ext=true,Callback=function()
	pcall(function()
		local FlatIdent_6245F = 0;
		while true do
			if (FlatIdent_6245F == 0) then
				v5.VIPServer:FireServer("Join", "TLSophvrRP");
				v4:SetCore("SendNotification", {Title="功能提示",Text="已尝试加入私服代码: TLSophvrRP",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end);
end});
v17:CreateToggle({Name="透视ST角色",CurrentValue=false,Flag="NpcHighlightToggle",Ext=true,Callback=function(v245)
	local FlatIdent_14A42 = 0;
	while true do
		if (FlatIdent_14A42 == 0) then
			v52 = v245;
			if v245 then
				local FlatIdent_87A36 = 0;
				while true do
					if (FlatIdent_87A36 == 0) then
						if not v55 then
							v55 = v3.Heartbeat:Connect(v66);
						end
						v65();
						FlatIdent_87A36 = 1;
					end
					if (FlatIdent_87A36 == 1) then
						v4:SetCore("SendNotification", {Title="功能提示",Text="已开启透视ST角色",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			else
				local FlatIdent_2C1E9 = 0;
				while true do
					if (FlatIdent_2C1E9 == 0) then
						v64();
						if v55 then
							local FlatIdent_1DE58 = 0;
							while true do
								if (FlatIdent_1DE58 == 0) then
									v55:Disconnect();
									v55 = nil;
									break;
								end
							end
						end
						FlatIdent_2C1E9 = 1;
					end
					if (FlatIdent_2C1E9 == 1) then
						v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭透视ST角色",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			end
			break;
		end
	end
end});
local v73 = false;
local v74 = {};
local v75 = nil;
local function v76(v246)
	local FlatIdent_51FCC = 0;
	while true do
		if (FlatIdent_51FCC == 0) then
			for v502, v503 in ipairs(v1:GetPlayers()) do
				if (v503.Character == v246) then
					return v503;
				end
			end
			return nil;
		end
	end
end
local function v77(v247, v248)
	local FlatIdent_90DF8 = 0;
	local v249;
	local v250;
	local v257;
	local v270;
	while true do
		if (FlatIdent_90DF8 == 3) then
			v257.BackgroundTransparency = 1;
			v257.Text = v248.Name;
			v257.TextColor3 = Color3.fromRGB(255, 255, 0);
			v257.TextSize = 11;
			FlatIdent_90DF8 = 4;
		end
		if (FlatIdent_90DF8 == 8) then
			return {billboard=v250,name=v257,dist=v270};
		end
		if (FlatIdent_90DF8 == 4) then
			v257.Font = Enum.Font.GothamBold;
			v257.TextStrokeTransparency = 0.3;
			v257.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
			v257.Parent = v250;
			FlatIdent_90DF8 = 5;
		end
		if (FlatIdent_90DF8 == 7) then
			v270.Font = Enum.Font.Gotham;
			v270.TextStrokeTransparency = 0.3;
			v270.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
			v270.Parent = v250;
			FlatIdent_90DF8 = 8;
		end
		if (FlatIdent_90DF8 == 1) then
			v250.Size = UDim2.new(0, 120, 0, 40);
			v250.StudsOffset = Vector3.new(0, 2.5, 0);
			v250.AlwaysOnTop = true;
			v250.MaxDistance = 10000;
			FlatIdent_90DF8 = 2;
		end
		if (FlatIdent_90DF8 == 6) then
			v270.BackgroundTransparency = 1;
			v270.Text = "0m";
			v270.TextColor3 = Color3.fromRGB(200, 200, 200);
			v270.TextSize = 9;
			FlatIdent_90DF8 = 7;
		end
		if (FlatIdent_90DF8 == 5) then
			v270 = Instance.new("TextLabel");
			v270.Name = "DistLabel";
			v270.Size = UDim2.new(1, 0, 0.4, 0);
			v270.Position = UDim2.new(0, 0, 0.6, 0);
			FlatIdent_90DF8 = 6;
		end
		if (FlatIdent_90DF8 == 2) then
			v250.Parent = v249;
			v257 = Instance.new("TextLabel");
			v257.Size = UDim2.new(1, 0, 0.6, 0);
			v257.Position = UDim2.new(0, 0, 0, 0);
			FlatIdent_90DF8 = 3;
		end
		if (FlatIdent_90DF8 == 0) then
			v249 = v247:FindFirstChild("Head");
			if not v249 then
				return;
			end
			v250 = Instance.new("BillboardGui");
			v250.Name = "PlayerInfo";
			FlatIdent_90DF8 = 1;
		end
	end
end
local function v78(v283, v284)
	local FlatIdent_7695C = 0;
	local v285;
	local v286;
	while true do
		if (0 == FlatIdent_7695C) then
			v285 = v283:FindFirstChild("Humanoid");
			if not v285 then
				return;
			end
			v286 = Instance.new("Highlight");
			v286.Name = "PlayerESP";
			FlatIdent_7695C = 1;
		end
		if (FlatIdent_7695C == 2) then
			v286.OutlineTransparency = 0.5;
			v286.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
			v286.Parent = v283;
			return v286;
		end
		if (FlatIdent_7695C == 1) then
			v286.Adornee = v283;
			v286.FillColor = Color3.fromRGB(255, 255, 255);
			v286.OutlineColor = Color3.fromRGB(255, 255, 255);
			v286.FillTransparency = 0.7;
			FlatIdent_7695C = 2;
		end
	end
end
local function v79(v296)
	local FlatIdent_6CF78 = 0;
	local v297;
	local v298;
	while true do
		if (FlatIdent_6CF78 == 0) then
			v297 = v296:FindFirstChild("PlayerESP");
			if v297 then
				v297:Destroy();
			end
			FlatIdent_6CF78 = 1;
		end
		if (FlatIdent_6CF78 == 1) then
			v298 = v296:FindFirstChild("Head");
			if v298 then
				local FlatIdent_87F0A = 0;
				local v572;
				while true do
					if (FlatIdent_87F0A == 0) then
						v572 = v298:FindFirstChild("PlayerInfo");
						if v572 then
							v572:Destroy();
						end
						break;
					end
				end
			end
			break;
		end
	end
end
local function v80(v299)
	local FlatIdent_1D0A6 = 0;
	local v300;
	while true do
		if (FlatIdent_1D0A6 == 0) then
			v300 = v76(v299);
			if not v300 then
				return;
			end
			FlatIdent_1D0A6 = 1;
		end
		if (FlatIdent_1D0A6 == 2) then
			v78(v299, v300);
			v77(v299, v300);
			break;
		end
		if (FlatIdent_1D0A6 == 1) then
			if v299:FindFirstChild("PlayerESP") then
				return;
			end
			task.wait(0.2);
			FlatIdent_1D0A6 = 2;
		end
	end
end
local function v81()
	local FlatIdent_3BEFE = 0;
	local v301;
	while true do
		if (0 == FlatIdent_3BEFE) then
			v301 = v6:FindFirstChild("Living");
			if not v301 then
				return;
			end
			FlatIdent_3BEFE = 1;
		end
		if (1 == FlatIdent_3BEFE) then
			for v504, v505 in ipairs(v301:GetChildren()) do
				if (v505:IsA("Model") and v505:FindFirstChild("Humanoid")) then
					v80(v505);
				end
			end
			break;
		end
	end
end
local function v82()
	local FlatIdent_91EEA = 0;
	local v302;
	local v303;
	while true do
		if (FlatIdent_91EEA == 0) then
			if not v73 then
				return;
			end
			v302 = v2.Character and v2.Character:FindFirstChild("HumanoidRootPart");
			FlatIdent_91EEA = 1;
		end
		if (FlatIdent_91EEA == 2) then
			if not v303 then
				return;
			end
			for v506, v507 in ipairs(v303:GetChildren()) do
				if v507:IsA("Model") then
					local FlatIdent_6873F = 0;
					local v628;
					while true do
						if (FlatIdent_6873F == 0) then
							v628 = v507:FindFirstChild("Head");
							if v628 then
								local FlatIdent_44337 = 0;
								local v669;
								while true do
									if (FlatIdent_44337 == 0) then
										v669 = v628:FindFirstChild("PlayerInfo");
										if v669 then
											local FlatIdent_1F799 = 0;
											local v733;
											while true do
												if (0 == FlatIdent_1F799) then
													v733 = v669:FindFirstChild("DistLabel");
													if v733 then
														local FlatIdent_345F5 = 0;
														local v757;
														while true do
															if (FlatIdent_345F5 == 0) then
																v757 = v507:FindFirstChild("HumanoidRootPart") or v507:FindFirstChildWhichIsA("BasePart");
																if v757 then
																	local FlatIdent_2D05E = 0;
																	local v764;
																	while true do
																		if (FlatIdent_2D05E == 0) then
																			v764 = (v302.Position - v757.Position).Magnitude;
																			v733.Text = string.format("%.1fm", v764);
																			break;
																		end
																	end
																end
																break;
															end
														end
													end
													break;
												end
											end
										end
										break;
									end
								end
							end
							break;
						end
					end
				end
			end
			break;
		end
		if (FlatIdent_91EEA == 1) then
			if not v302 then
				return;
			end
			v303 = v6:FindFirstChild("Living");
			FlatIdent_91EEA = 2;
		end
	end
end
local function v83()
	local FlatIdent_5062 = 0;
	local v304;
	local v305;
	local v306;
	while true do
		if (FlatIdent_5062 == 1) then
			if not v304 then
				local FlatIdent_8FACF = 0;
				local v573;
				while true do
					if (0 == FlatIdent_8FACF) then
						v573 = v6.ChildAdded:Connect(function(v629)
							if (v629.Name == "Living") then
								v83();
							end
						end);
						table.insert(v74, v573);
						FlatIdent_8FACF = 1;
					end
					if (1 == FlatIdent_8FACF) then
						return;
					end
				end
			end
			v81();
			FlatIdent_5062 = 2;
		end
		if (3 == FlatIdent_5062) then
			v306 = v304.ChildRemoved:Connect(function(v509)
				v79(v509);
			end);
			table.insert(v74, v306);
			break;
		end
		if (FlatIdent_5062 == 2) then
			v305 = v304.ChildAdded:Connect(function(v508)
				if (v508:IsA("Model") and v508:FindFirstChild("Humanoid")) then
					v80(v508);
				end
			end);
			table.insert(v74, v305);
			FlatIdent_5062 = 3;
		end
		if (0 == FlatIdent_5062) then
			if not v73 then
				return;
			end
			v304 = v6:FindFirstChild("Living");
			FlatIdent_5062 = 1;
		end
	end
end
local function v84()
	local FlatIdent_833D = 0;
	local v307;
	while true do
		if (FlatIdent_833D == 2) then
			if v307 then
				for v630, v631 in ipairs(v307:GetChildren()) do
					v79(v631);
				end
			end
			break;
		end
		if (FlatIdent_833D == 1) then
			v74 = {};
			v307 = v6:FindFirstChild("Living");
			FlatIdent_833D = 2;
		end
		if (FlatIdent_833D == 0) then
			if v75 then
				local FlatIdent_509DF = 0;
				while true do
					if (FlatIdent_509DF == 0) then
						task.cancel(v75);
						v75 = nil;
						break;
					end
				end
			end
			for v510, v511 in ipairs(v74) do
				pcall(function()
					v511:Disconnect();
				end);
			end
			FlatIdent_833D = 1;
		end
	end
end
v17:CreateToggle({Name="玩家透视",CurrentValue=false,Flag="PlayerEspToggle",Ext=true,Callback=function(v308)
	local FlatIdent_EE01 = 0;
	while true do
		if (0 == FlatIdent_EE01) then
			v73 = v308;
			if v308 then
				local FlatIdent_3E056 = 0;
				while true do
					if (0 == FlatIdent_3E056) then
						v84();
						v83();
						FlatIdent_3E056 = 1;
					end
					if (1 == FlatIdent_3E056) then
						v75 = task.spawn(function()
							while v73 do
								task.wait(0.5);
								v82();
							end
						end);
						v4:SetCore("SendNotification", {Title="功能提示",Text="已开启玩家透视",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			else
				local FlatIdent_52478 = 0;
				while true do
					if (FlatIdent_52478 == 0) then
						v84();
						v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭玩家透视",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			end
			break;
		end
	end
end});
local v85 = false;
local v86 = nil;
local v87 = nil;
local function v88()
	local FlatIdent_8387D = 0;
	local v309;
	while true do
		if (FlatIdent_8387D == 0) then
			v309 = v2:FindFirstChild("PlayerGui");
			if v309 then
				local FlatIdent_1B878 = 0;
				local v574;
				while true do
					if (0 == FlatIdent_1B878) then
						v574 = v309:FindFirstChild("PlayerCountUI");
						if v574 then
							v574:Destroy();
						end
						break;
					end
				end
			end
			break;
		end
	end
end
local function v89()
	local FlatIdent_62271 = 0;
	local v310;
	local v311;
	local v316;
	local v331;
	while true do
		if (FlatIdent_62271 == 7) then
			v331.TextSize = 14;
			v331.TextStrokeTransparency = 0;
			v331.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
			v331.TextXAlignment = Enum.TextXAlignment.Right;
			FlatIdent_62271 = 8;
		end
		if (FlatIdent_62271 == 2) then
			v316.Name = "AliveLabel";
			v316.Size = UDim2.new(0, 100, 0, 22);
			v316.Position = UDim2.new(1, -105, 0, 5);
			v316.BackgroundTransparency = 1;
			FlatIdent_62271 = 3;
		end
		if (FlatIdent_62271 == 3) then
			v316.Text = "存活: 0";
			v316.TextColor3 = Color3.fromRGB(0, 255, 100);
			v316.Font = Enum.Font.SourceSansBold;
			v316.TextSize = 14;
			FlatIdent_62271 = 4;
		end
		if (FlatIdent_62271 == 5) then
			v331 = Instance.new("TextLabel");
			v331.Name = "DownedLabel";
			v331.Size = UDim2.new(0, 100, 0, 22);
			v331.Position = UDim2.new(1, -105, 0, 27);
			FlatIdent_62271 = 6;
		end
		if (FlatIdent_62271 == 0) then
			v310 = v2:FindFirstChild("PlayerGui");
			if not v310 then
				return nil;
			end
			v311 = Instance.new("ScreenGui");
			v311.Name = "PlayerCountUI";
			FlatIdent_62271 = 1;
		end
		if (FlatIdent_62271 == 6) then
			v331.BackgroundTransparency = 1;
			v331.Text = "倒地: 0";
			v331.TextColor3 = Color3.fromRGB(255, 80, 80);
			v331.Font = Enum.Font.SourceSansBold;
			FlatIdent_62271 = 7;
		end
		if (FlatIdent_62271 == 4) then
			v316.TextStrokeTransparency = 0;
			v316.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
			v316.TextXAlignment = Enum.TextXAlignment.Right;
			v316.Parent = v311;
			FlatIdent_62271 = 5;
		end
		if (FlatIdent_62271 == 8) then
			v331.Parent = v311;
			return v311;
		end
		if (FlatIdent_62271 == 1) then
			v311.IgnoreGuiInset = true;
			v311.ResetOnSpawn = false;
			v311.Parent = v310;
			v316 = Instance.new("TextLabel");
			FlatIdent_62271 = 2;
		end
	end
end
local function v90()
	local FlatIdent_356A = 0;
	local v344;
	local v345;
	local v346;
	local v347;
	while true do
		if (FlatIdent_356A == 2) then
			v346 = v345:FindFirstChild("AliveLabel");
			v347 = v345:FindFirstChild("DownedLabel");
			FlatIdent_356A = 3;
		end
		if (FlatIdent_356A == 3) then
			if (not v346 or not v347) then
				return;
			end
			pcall(function()
				local FlatIdent_1436A = 0;
				local v512;
				local v513;
				local v514;
				while true do
					if (FlatIdent_1436A == 0) then
						v512 = v6:FindFirstChild("Living");
						if not v512 then
							local FlatIdent_227B6 = 0;
							while true do
								if (0 == FlatIdent_227B6) then
									v346.Text = "存活: 0";
									v347.Text = "倒地: 0";
									FlatIdent_227B6 = 1;
								end
								if (FlatIdent_227B6 == 1) then
									return;
								end
							end
						end
						FlatIdent_1436A = 1;
					end
					if (FlatIdent_1436A == 3) then
						v347.Text = "倒地: " .. v514;
						break;
					end
					if (FlatIdent_1436A == 2) then
						for v575, v576 in ipairs(v1:GetPlayers()) do
							local FlatIdent_3DA75 = 0;
							local v577;
							while true do
								if (FlatIdent_3DA75 == 0) then
									v577 = v576.Character;
									if (v577 and v577:IsDescendantOf(v512)) then
										local FlatIdent_38DAC = 0;
										local v652;
										local v653;
										while true do
											if (FlatIdent_38DAC == 1) then
												if v652 then
													local FlatIdent_6D09C = 0;
													local v718;
													while true do
														if (FlatIdent_6D09C == 0) then
															v718 = v652:FindFirstChild("ReviveUI");
															if v718 then
																v653 = true;
															end
															break;
														end
													end
												end
												if v653 then
													v514 = v514 + 1;
												else
													v513 = v513 + 1;
												end
												break;
											end
											if (0 == FlatIdent_38DAC) then
												v652 = v577:FindFirstChild("HumanoidRootPart");
												v653 = false;
												FlatIdent_38DAC = 1;
											end
										end
									end
									break;
								end
							end
						end
						v346.Text = "存活: " .. v513;
						FlatIdent_1436A = 3;
					end
					if (FlatIdent_1436A == 1) then
						v513 = 0;
						v514 = 0;
						FlatIdent_1436A = 2;
					end
				end
			end);
			break;
		end
		if (FlatIdent_356A == 1) then
			v345 = v344:FindFirstChild("PlayerCountUI");
			if not v345 then
				return;
			end
			FlatIdent_356A = 2;
		end
		if (FlatIdent_356A == 0) then
			v344 = v2:FindFirstChild("PlayerGui");
			if not v344 then
				return;
			end
			FlatIdent_356A = 1;
		end
	end
end
local function v91()
	local FlatIdent_62AB4 = 0;
	while true do
		if (FlatIdent_62AB4 == 0) then
			if v87 then
				return;
			end
			v87 = task.spawn(function()
				while v85 do
					local FlatIdent_38103 = 0;
					while true do
						if (FlatIdent_38103 == 0) then
							v90();
							task.wait(1);
							break;
						end
					end
				end
			end);
			break;
		end
	end
end
local function v92()
	if v87 then
		local FlatIdent_4B539 = 0;
		while true do
			if (FlatIdent_4B539 == 0) then
				task.cancel(v87);
				v87 = nil;
				break;
			end
		end
	end
end
local function v93()
	local FlatIdent_2C3E6 = 0;
	while true do
		if (FlatIdent_2C3E6 == 0) then
			if v86 then
				return;
			end
			v86 = task.spawn(function()
				while v85 do
					local FlatIdent_9018E = 0;
					local v578;
					while true do
						if (FlatIdent_9018E == 1) then
							task.wait(0.5);
							break;
						end
						if (FlatIdent_9018E == 0) then
							v578 = v2:FindFirstChild("PlayerGui");
							if v578 then
								local FlatIdent_13AEB = 0;
								local v654;
								while true do
									if (FlatIdent_13AEB == 0) then
										v654 = v578:FindFirstChild("PlayerCountUI");
										if not v654 then
											v89();
										end
										break;
									end
								end
							end
							FlatIdent_9018E = 1;
						end
					end
				end
			end);
			break;
		end
	end
end
local function v94()
	if v86 then
		task.cancel(v86);
		v86 = nil;
	end
end
v17:CreateToggle({Name="玩家显示",CurrentValue=false,Flag="PlayerDisplayToggle",Ext=true,Callback=function(v348)
	local FlatIdent_1D2CD = 0;
	while true do
		if (FlatIdent_1D2CD == 0) then
			v85 = v348;
			if v348 then
				local FlatIdent_AF23 = 0;
				while true do
					if (FlatIdent_AF23 == 1) then
						v93();
						v91();
						FlatIdent_AF23 = 2;
					end
					if (FlatIdent_AF23 == 0) then
						v88();
						v89();
						FlatIdent_AF23 = 1;
					end
					if (FlatIdent_AF23 == 2) then
						v4:SetCore("SendNotification", {Title="功能提示",Text="已开启玩家显示",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			else
				local FlatIdent_360C0 = 0;
				while true do
					if (FlatIdent_360C0 == 0) then
						v94();
						v92();
						FlatIdent_360C0 = 1;
					end
					if (1 == FlatIdent_360C0) then
						v88();
						v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭玩家显示",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			end
			break;
		end
	end
end});
local v95 = false;
local v96 = nil;
local v97 = nil;
local v98 = {Common=0,Epic=0,Legendary=0,Mythic=0};
local v99 = 0;
local function v100()
	local FlatIdent_43917 = 0;
	local v349;
	while true do
		if (FlatIdent_43917 == 0) then
			if v96 then
				return;
			end
			v349 = game:GetService("CoreGui"):FindFirstChild("GachaStatUI");
			if v349 then
				v349:Destroy();
			end
			v96 = Instance.new("ScreenGui");
			FlatIdent_43917 = 1;
		end
		if (3 == FlatIdent_43917) then
			v97.Position = UDim2.new(0.25, 0, 0.02, 0);
			v97.BackgroundTransparency = 1;
			v97.TextColor3 = Color3.new(1, 1, 1);
			v97.TextScaled = true;
			FlatIdent_43917 = 4;
		end
		if (FlatIdent_43917 == 4) then
			v97.Font = Enum.Font.Gotham;
			v97.ZIndex = 10;
			v97.Text = "普通:" .. v98.Common .. " 史诗:" .. v98.Epic .. " 传说:" .. v98.Legendary .. " 神话:" .. v98.Mythic;
			v97.Parent = v96;
			FlatIdent_43917 = 5;
		end
		if (FlatIdent_43917 == 1) then
			v96.Name = "GachaStatUI";
			v96.Parent = game:GetService("CoreGui");
			v96.DisplayOrder = 999;
			v96.Enabled = true;
			FlatIdent_43917 = 2;
		end
		if (FlatIdent_43917 == 2) then
			v96.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
			v96.ResetOnSpawn = false;
			v97 = Instance.new("TextLabel");
			v97.Size = UDim2.new(0.5, 0, 0.07, 0);
			FlatIdent_43917 = 3;
		end
		if (FlatIdent_43917 == 5) then
			task.wait();
			v96.Enabled = true;
			break;
		end
	end
end
local function v101()
	local FlatIdent_4087C = 0;
	local v367;
	while true do
		if (FlatIdent_4087C == 0) then
			if v96 then
				local FlatIdent_212D3 = 0;
				while true do
					if (FlatIdent_212D3 == 1) then
						v97 = nil;
						break;
					end
					if (FlatIdent_212D3 == 0) then
						v96:Destroy();
						v96 = nil;
						FlatIdent_212D3 = 1;
					end
				end
			end
			v367 = game:GetService("CoreGui"):FindFirstChild("GachaStatUI");
			FlatIdent_4087C = 1;
		end
		if (FlatIdent_4087C == 1) then
			if v367 then
				v367:Destroy();
			end
			break;
		end
	end
end
local function v102()
	if v97 then
		v97.Text = "普通:" .. v98.Common .. " 史诗:" .. v98.Epic .. " 传说:" .. v98.Legendary .. " 神话:" .. v98.Mythic;
	end
end
local v103 = nil;
local function v104()
	local FlatIdent_7334F = 0;
	local v368;
	local v369;
	while true do
		if (FlatIdent_7334F == 1) then
			if not v368 then
				return;
			end
			v103 = v368.OnClientEvent:Connect(function(v517, ...)
				local FlatIdent_1E149 = 0;
				local v518;
				while true do
					if (FlatIdent_1E149 == 3) then
						v98.Legendary = v98.Legendary + (v518['Legendary'] or 0);
						v98.Mythic = v98.Mythic + (v518['Mythic'] or 0);
						FlatIdent_1E149 = 4;
					end
					if (4 == FlatIdent_1E149) then
						v102();
						break;
					end
					if (FlatIdent_1E149 == 0) then
						if (type(v517) ~= "table") then
							return;
						end
						if not v95 then
							return;
						end
						FlatIdent_1E149 = 1;
					end
					if (FlatIdent_1E149 == 1) then
						v518 = {};
						for v580, v581 in ipairs(v517) do
							local FlatIdent_6128B = 0;
							local v582;
							while true do
								if (0 == FlatIdent_6128B) then
									v582 = v581[2];
									v518[v582] = (v518[v582] or 0) + 1;
									break;
								end
							end
						end
						FlatIdent_1E149 = 2;
					end
					if (FlatIdent_1E149 == 2) then
						v98.Common = v98.Common + (v518['Common'] or 0);
						v98.Epic = v98.Epic + (v518['Epic'] or 0);
						FlatIdent_1E149 = 3;
					end
				end
			end);
			FlatIdent_7334F = 2;
		end
		if (FlatIdent_7334F == 2) then
			v369 = v368.FireServer;
			v368.FireServer = function(v523, ...)
				local FlatIdent_2FA59 = 0;
				local v524;
				while true do
					if (FlatIdent_2FA59 == 1) then
						return v369(v523, ...);
					end
					if (0 == FlatIdent_2FA59) then
						v524 = {...};
						for v584, v585 in pairs(v524) do
							if ((type(v585) == "string") and v585:lower():find("100")) then
								v99 = v99 + 1;
								if v95 then
									v4:SetCore("SendNotification", {Title="100抽统计",Text=("已进行 " .. v99 .. " 次100抽"),Duration=4});
								end
								break;
							end
						end
						FlatIdent_2FA59 = 1;
					end
				end
			end;
			break;
		end
		if (FlatIdent_7334F == 0) then
			if v103 then
				return;
			end
			v368 = v5:FindFirstChild("GachaCharacter");
			FlatIdent_7334F = 1;
		end
	end
end
v17:CreateToggle({Name="抽奖统计显示",CurrentValue=false,Flag="GachaStatToggle",Ext=true,Callback=function(v371)
	local FlatIdent_47F4B = 0;
	while true do
		if (FlatIdent_47F4B == 0) then
			v95 = v371;
			if v371 then
				local FlatIdent_5DC99 = 0;
				while true do
					if (1 == FlatIdent_5DC99) then
						v100();
						v102();
						FlatIdent_5DC99 = 2;
					end
					if (FlatIdent_5DC99 == 0) then
						v104();
						v101();
						FlatIdent_5DC99 = 1;
					end
					if (FlatIdent_5DC99 == 3) then
						v4:SetCore("SendNotification", {Title="功能提示",Text="已开启抽奖统计显示",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
					if (FlatIdent_5DC99 == 2) then
						task.wait(0.1);
						if v96 then
							v96.Enabled = true;
						end
						FlatIdent_5DC99 = 3;
					end
				end
			else
				local FlatIdent_63A9A = 0;
				while true do
					if (0 == FlatIdent_63A9A) then
						v101();
						v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭抽奖统计显示",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			end
			break;
		end
	end
end});
local v105 = false;
local v106 = {};
local v107 = {};
local v108 = nil;
local v109 = {"lever","Head","AT","SpecterRoom","ModelDoor","Right arm","Acid Arm","Material"};
local function v110(v372)
	local FlatIdent_5B644 = 0;
	while true do
		if (FlatIdent_5B644 == 1) then
			if (v372 == v2.Character) then
				return true;
			end
			return false;
		end
		if (FlatIdent_5B644 == 0) then
			if (not v372 or not v372:IsA("Model")) then
				return false;
			end
			if v1:GetPlayerFromCharacter(v372) then
				return true;
			end
			FlatIdent_5B644 = 1;
		end
	end
end
local function v111(v373)
	local FlatIdent_733BE = 0;
	while true do
		if (FlatIdent_733BE == 0) then
			if (not v373 or not v373:IsA("Model")) then
				return false;
			end
			if v110(v373) then
				return false;
			end
			FlatIdent_733BE = 1;
		end
		if (FlatIdent_733BE == 1) then
			if v373:FindFirstChildWhichIsA("Humanoid") then
				return true;
			end
			return false;
		end
	end
end
local function v112(v374)
	local FlatIdent_45054 = 0;
	while true do
		if (FlatIdent_45054 == 1) then
			return false;
		end
		if (FlatIdent_45054 == 0) then
			if not v374 then
				return false;
			end
			for v525, v526 in pairs(v109) do
				local FlatIdent_9874B = 0;
				while true do
					if (FlatIdent_9874B == 0) then
						if (v374.Name == v526) then
							return true;
						end
						if (v374.Parent and (v374.Parent.Name == v526)) then
							return true;
						end
						FlatIdent_9874B = 1;
					end
					if (FlatIdent_9874B == 1) then
						if (v374.Parent and v374.Parent.Parent and (v374.Parent.Parent.Name == v526)) then
							return true;
						end
						break;
					end
				end
			end
			FlatIdent_45054 = 1;
		end
	end
end
local function v113(v375)
	local FlatIdent_7CC7D = 0;
	while true do
		if (FlatIdent_7CC7D == 0) then
			if not v375 then
				return false;
			end
			if (v375:IsA("ClickDetector") or v375:IsA("ProximityPrompt") or v375:IsA("TouchInterest")) then
				return true;
			end
			FlatIdent_7CC7D = 1;
		end
		if (FlatIdent_7CC7D == 1) then
			if v375:IsA("Tool") then
				return true;
			end
			for v527, v528 in pairs(v375:GetDescendants()) do
				if v528:IsA("ClickDetector") then
					return true;
				end
				if v528:IsA("ProximityPrompt") then
					return true;
				end
				if v528:IsA("TouchInterest") then
					return true;
				end
				if v528:IsA("Tool") then
					return true;
				end
			end
			FlatIdent_7CC7D = 2;
		end
		if (2 == FlatIdent_7CC7D) then
			return false;
		end
	end
end
local function v114(v376)
	local FlatIdent_3C74B = 0;
	while true do
		if (FlatIdent_3C74B == 1) then
			if v376:IsA("Tool") then
				local FlatIdent_3C22B = 0;
				local v588;
				while true do
					if (FlatIdent_3C22B == 0) then
						v588 = v376:FindFirstChild("Handle") or v376:FindFirstChildWhichIsA("BasePart");
						if v588 then
							return v588;
						end
						break;
					end
				end
			end
			return nil;
		end
		if (FlatIdent_3C74B == 0) then
			if (v376:IsA("BasePart") or v376:IsA("Part") or v376:IsA("MeshPart") or v376:IsA("UnionOperation")) then
				return v376;
			end
			if v376:IsA("Model") then
				local FlatIdent_394C = 0;
				local v586;
				local v587;
				while true do
					if (0 == FlatIdent_394C) then
						v586 = v376:FindFirstChild("HumanoidRootPart");
						if v586 then
							return v586;
						end
						FlatIdent_394C = 1;
					end
					if (FlatIdent_394C == 1) then
						v587 = v376:FindFirstChildWhichIsA("BasePart");
						if v587 then
							return v587;
						end
						break;
					end
				end
			end
			FlatIdent_3C74B = 1;
		end
	end
end
local function v115(v377)
	local FlatIdent_82DBD = 0;
	local v378;
	local v379;
	local v387;
	local v398;
	while true do
		if (FlatIdent_82DBD == 0) then
			if v107[v377] then
				return;
			end
			v378 = v114(v377);
			if not v378 then
				return;
			end
			v379 = Instance.new("BillboardGui");
			FlatIdent_82DBD = 1;
		end
		if (FlatIdent_82DBD == 5) then
			v398 = Instance.new("TextLabel", v379);
			v398.Size = UDim2.new(1, 0, 0.4, 0);
			v398.Position = UDim2.new(0, 0, 0.6, 0);
			v398.BackgroundTransparency = 1;
			FlatIdent_82DBD = 6;
		end
		if (FlatIdent_82DBD == 7) then
			v398.TextStrokeTransparency = 0.3;
			v398.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
			v107[v377] = {name=v387,dist=v398,attach=v378};
			break;
		end
		if (FlatIdent_82DBD == 3) then
			v387.Position = UDim2.new(0, 0, 0, 0);
			v387.BackgroundTransparency = 1;
			v387.Text = v377.Name or "互动";
			v387.TextColor3 = Color3.fromRGB(0, 150, 255);
			FlatIdent_82DBD = 4;
		end
		if (FlatIdent_82DBD == 1) then
			v379.Adornee = v378;
			v379.Size = UDim2.new(0, 160, 0, 45);
			v379.StudsOffset = Vector3.new(0, 3, 0);
			v379.AlwaysOnTop = true;
			FlatIdent_82DBD = 2;
		end
		if (FlatIdent_82DBD == 4) then
			v387.TextSize = 11;
			v387.Font = Enum.Font.GothamBold;
			v387.TextStrokeTransparency = 0.3;
			v387.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
			FlatIdent_82DBD = 5;
		end
		if (FlatIdent_82DBD == 2) then
			v379.MaxDistance = math.huge;
			v379.Parent = v378;
			v387 = Instance.new("TextLabel", v379);
			v387.Size = UDim2.new(1, 0, 0.6, 0);
			FlatIdent_82DBD = 3;
		end
		if (FlatIdent_82DBD == 6) then
			v398.Text = "0m";
			v398.TextColor3 = Color3.fromRGB(200, 200, 200);
			v398.TextSize = 9;
			v398.Font = Enum.Font.Gotham;
			FlatIdent_82DBD = 7;
		end
	end
end
local function v116(v410)
	if v107[v410] then
		local FlatIdent_26492 = 0;
		local v589;
		while true do
			if (FlatIdent_26492 == 0) then
				v589 = v107[v410].name.Parent;
				if v589 then
					v589:Destroy();
				end
				FlatIdent_26492 = 1;
			end
			if (FlatIdent_26492 == 1) then
				v107[v410] = nil;
				break;
			end
		end
	end
end
local function v117(v411)
	local FlatIdent_4977C = 0;
	local v412;
	local v413;
	while true do
		if (FlatIdent_4977C == 2) then
			v413.Name = "Highlight_ESP";
			v413.Adornee = v412;
			v413.FillColor = Color3.fromRGB(0, 100, 255);
			v413.OutlineColor = Color3.fromRGB(255, 255, 255);
			FlatIdent_4977C = 3;
		end
		if (FlatIdent_4977C == 4) then
			v115(v411);
			break;
		end
		if (FlatIdent_4977C == 3) then
			v413.FillTransparency = 0.5;
			v413.OutlineTransparency = 0;
			v413.Parent = v412;
			v106[v411] = v413;
			FlatIdent_4977C = 4;
		end
		if (FlatIdent_4977C == 1) then
			v412 = v114(v411);
			if not v412 then
				return;
			end
			if v412:FindFirstChild("Highlight_ESP") then
				return;
			end
			v413 = Instance.new("Highlight");
			FlatIdent_4977C = 2;
		end
		if (FlatIdent_4977C == 0) then
			if v106[v411] then
				return;
			end
			if not v411 then
				return;
			end
			if v111(v411) then
				return;
			end
			if v112(v411) then
				return;
			end
			FlatIdent_4977C = 1;
		end
	end
end
local function v118(v422)
	local FlatIdent_5D905 = 0;
	while true do
		if (FlatIdent_5D905 == 0) then
			if v106[v422] then
				local FlatIdent_991F5 = 0;
				while true do
					if (FlatIdent_991F5 == 0) then
						v106[v422]:Destroy();
						v106[v422] = nil;
						break;
					end
				end
			end
			v116(v422);
			break;
		end
	end
end
local function v119()
	local FlatIdent_61610 = 0;
	while true do
		if (0 == FlatIdent_61610) then
			for v529, v530 in pairs(v106) do
				v118(v529);
			end
			for v531, v532 in pairs(v107) do
				v116(v531);
			end
			break;
		end
	end
end
local function v120()
	local FlatIdent_53FA2 = 0;
	local v423;
	while true do
		if (FlatIdent_53FA2 == 0) then
			v119();
			v423 = 0;
			FlatIdent_53FA2 = 1;
		end
		if (1 == FlatIdent_53FA2) then
			for v533, v534 in pairs(v6:GetDescendants()) do
				if v113(v534) then
					if not v111(v534) then
						local FlatIdent_92C97 = 0;
						local v670;
						while true do
							if (FlatIdent_92C97 == 0) then
								v670 = v534;
								if (v534:IsA("ClickDetector") or v534:IsA("ProximityPrompt") or v534:IsA("TouchInterest")) then
									v670 = v534.Parent;
								end
								FlatIdent_92C97 = 1;
							end
							if (FlatIdent_92C97 == 1) then
								if (v670 and not v112(v670)) then
									local FlatIdent_5A1A4 = 0;
									while true do
										if (FlatIdent_5A1A4 == 0) then
											v117(v670);
											v423 = v423 + 1;
											break;
										end
									end
								end
								break;
							end
						end
					end
				end
			end
			break;
		end
	end
end
local function v121()
	if not v105 then
		return;
	end
	local v424 = v2.Character and v2.Character:FindFirstChild("HumanoidRootPart");
	if not v424 then
		return;
	end
	for v535, v536 in pairs(v107) do
		if (v536 and v536.dist and v536.dist.Parent) then
			local FlatIdent_75E0E = 0;
			local v634;
			while true do
				if (0 == FlatIdent_75E0E) then
					v634 = v536.attach;
					if (v634 and v634.Parent) then
						local FlatIdent_97FFD = 0;
						local v671;
						while true do
							if (FlatIdent_97FFD == 0) then
								v671 = v634.Position;
								if v671 then
									local FlatIdent_890DA = 0;
									local v735;
									while true do
										if (0 == FlatIdent_890DA) then
											v735 = (v424.Position - v671).Magnitude;
											v536.dist.Text = string.format("%.1fm", v735);
											break;
										end
									end
								end
								break;
							end
						end
					end
					break;
				end
			end
		end
	end
end
local v122 = nil;
v17:CreateToggle({Name="材料透视",CurrentValue=false,Flag="MaterialEspToggle",Ext=true,Callback=function(v425)
	local FlatIdent_5805E = 0;
	while true do
		if (FlatIdent_5805E == 0) then
			v105 = v425;
			if v425 then
				local FlatIdent_1466E = 0;
				while true do
					if (2 == FlatIdent_1466E) then
						v4:SetCore("SendNotification", {Title="功能提示",Text="已开启材料透视",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
					if (FlatIdent_1466E == 0) then
						v120();
						if v122 then
							local FlatIdent_2F289 = 0;
							while true do
								if (0 == FlatIdent_2F289) then
									v122:Disconnect();
									v122 = nil;
									break;
								end
							end
						end
						FlatIdent_1466E = 1;
					end
					if (FlatIdent_1466E == 1) then
						v122 = v6.DescendantAdded:Connect(function(v635)
							local FlatIdent_6ABA9 = 0;
							while true do
								if (FlatIdent_6ABA9 == 0) then
									task.wait(0.1);
									if (v105 and v113(v635)) then
										local FlatIdent_5DDA1 = 0;
										local v672;
										while true do
											if (FlatIdent_5DDA1 == 1) then
												if (v672 and not v111(v672) and not v112(v672)) then
													v117(v672);
												end
												break;
											end
											if (FlatIdent_5DDA1 == 0) then
												v672 = v635;
												if (v635:IsA("ClickDetector") or v635:IsA("ProximityPrompt") or v635:IsA("TouchInterest")) then
													v672 = v635.Parent;
												end
												FlatIdent_5DDA1 = 1;
											end
										end
									end
									break;
								end
							end
						end);
						if not v108 then
							v108 = v3.Heartbeat:Connect(v121);
						end
						FlatIdent_1466E = 2;
					end
				end
			else
				local FlatIdent_3A6B4 = 0;
				while true do
					if (FlatIdent_3A6B4 == 1) then
						v119();
						v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭材料透视",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
					if (FlatIdent_3A6B4 == 0) then
						if v122 then
							v122:Disconnect();
							v122 = nil;
						end
						if v108 then
							local FlatIdent_99831 = 0;
							while true do
								if (0 == FlatIdent_99831) then
									v108:Disconnect();
									v108 = nil;
									break;
								end
							end
						end
						FlatIdent_3A6B4 = 1;
					end
				end
			end
			break;
		end
	end
end});
local v123 = v2:WaitForChild("PlayerGui");
v18:CreateToggle({Name="直升机商店",CurrentValue=false,Flag="HeliShopToggle",Ext=true,Callback=function(v426)
	local FlatIdent_5C9D7 = 0;
	local v427;
	while true do
		if (FlatIdent_5C9D7 == 0) then
			v427 = v123:FindFirstChild("003-A");
			if v427 then
				local FlatIdent_15D8C = 0;
				while true do
					if (FlatIdent_15D8C == 0) then
						v427.Enabled = v426;
						v4:SetCore("SendNotification", {Title="功能提示",Text=((v426 and "已开启直升机商店") or "已关闭直升机商店"),Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			else
				v4:SetCore("SendNotification", {Title="错误提示",Text="未找到商店",Duration=2,Icon="rbxassetid://128981664025072"});
			end
			break;
		end
	end
end});
v18:CreateToggle({Name="泰坦电视2.0装备商店",CurrentValue=false,Flag="TVShopToggle",Ext=true,Callback=function(v428)
	local FlatIdent_3C3AC = 0;
	local v429;
	while true do
		if (FlatIdent_3C3AC == 0) then
			v429 = v123:FindFirstChild("UpgradeTVShop");
			if v429 then
				local FlatIdent_15AD5 = 0;
				while true do
					if (FlatIdent_15AD5 == 0) then
						v429.Enabled = v428;
						v4:SetCore("SendNotification", {Title="功能提示",Text=((v428 and "已开启泰坦电视2.0装备商店") or "已关闭泰坦电视2.0装备商店"),Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			else
				v4:SetCore("SendNotification", {Title="错误提示",Text="未找到泰坦电视2.0装备商店",Duration=2,Icon="rbxassetid://128981664025072"});
			end
			break;
		end
	end
end});
v18:CreateToggle({Name="泰坦音响2.0装备商店",CurrentValue=false,Flag="UTSMShopToggle",Ext=true,Callback=function(v430)
	local FlatIdent_6A77C = 0;
	local v431;
	while true do
		if (FlatIdent_6A77C == 0) then
			v431 = v123:FindFirstChild("ConfirmUTSM");
			if v431 then
				local FlatIdent_49492 = 0;
				while true do
					if (FlatIdent_49492 == 0) then
						v431.Enabled = v430;
						v4:SetCore("SendNotification", {Title="功能提示",Text=((v430 and "已开启泰坦音响2.0装备商店") or "已关闭泰坦音响2.0装备商店"),Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			else
				v4:SetCore("SendNotification", {Title="错误提示",Text="未找到泰坦音响2.0装备商店",Duration=2,Icon="rbxassetid://128981664025072"});
			end
			break;
		end
	end
end});
v18:CreateToggle({Name="泰坦监控2.0装备商店",CurrentValue=false,Flag="CameraShopToggle",Ext=true,Callback=function(v432)
	local FlatIdent_41403 = 0;
	local v433;
	while true do
		if (FlatIdent_41403 == 0) then
			v433 = v123:FindFirstChild("UpgradeCameraShop");
			if v433 then
				local FlatIdent_437F5 = 0;
				while true do
					if (FlatIdent_437F5 == 0) then
						v433.Enabled = v432;
						v4:SetCore("SendNotification", {Title="功能提示",Text=((v432 and "已开启泰坦监控2.0装备商店") or "已关闭泰坦监控2.0装备商店"),Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			else
				v4:SetCore("SendNotification", {Title="错误提示",Text="未找到泰坦监控2.0装备商店",Duration=2,Icon="rbxassetid://128981664025072"});
			end
			break;
		end
	end
end});
local v124 = false;
v18:CreateButton({Name="导弹人装备升级",Ext=true,Callback=function()
	local FlatIdent_731FD = 0;
	local v434;
	while true do
		if (FlatIdent_731FD == 0) then
			if v124 then
				return;
			end
			v124 = true;
			FlatIdent_731FD = 1;
		end
		if (FlatIdent_731FD == 2) then
			task.wait(1);
			v124 = false;
			break;
		end
		if (FlatIdent_731FD == 1) then
			v434 = v5:FindFirstChild("NukeTitanSet");
			if v434 then
				local FlatIdent_8C7C9 = 0;
				while true do
					if (0 == FlatIdent_8C7C9) then
						pcall(function()
							v434:FireServer("BuyC4s");
						end);
						v4:SetCore("SendNotification", {Title="功能提示",Text="已购买 C4 装备",Duration=2,Icon="rbxassetid://128981664025072"});
						break;
					end
				end
			else
				v4:SetCore("SendNotification", {Title="错误提示",Text="未找到装备",Duration=2,Icon="rbxassetid://128981664025072"});
			end
			FlatIdent_731FD = 2;
		end
	end
end});
local v125 = game:GetService("VirtualInputManager");
local v126 = game:GetService("UserInputService");
v126.MouseIconEnabled = false;
local v128 = false;
local v129 = nil;
local function v130()
	local FlatIdent_2BC08 = 0;
	local v435;
	local v436;
	local v437;
	local v438;
	local v439;
	local v440;
	while true do
		if (0 == FlatIdent_2BC08) then
			v435 = v2:FindFirstChild("GachaMomment");
			if not v435 then
				return false;
			end
			v436 = v435.AbsolutePosition;
			FlatIdent_2BC08 = 1;
		end
		if (FlatIdent_2BC08 == 3) then
			task.wait(0.02);
			v125:SendTouchEvent(v440, 1, v438, v439);
			task.wait(0.02);
			FlatIdent_2BC08 = 4;
		end
		if (FlatIdent_2BC08 == 1) then
			v437 = v435.AbsoluteSize;
			if ((v436.X == 0) and (v436.Y == 0)) then
				return false;
			end
			v438 = v436.X + (v437.X / 2);
			FlatIdent_2BC08 = 2;
		end
		if (FlatIdent_2BC08 == 4) then
			v125:SendTouchEvent(v440, 2, v438, v439);
			return true;
		end
		if (FlatIdent_2BC08 == 2) then
			v439 = v436.Y + (v437.Y / 2);
			v440 = math.random(1000, 9999);
			v125:SendTouchEvent(v440, 0, v438, v439);
			FlatIdent_2BC08 = 3;
		end
	end
end
v13:CreateToggle({Name="自动点击抽奖",CurrentValue=false,Flag="AutoClickGachaToggle",Ext=true,Callback=function(v441)
	if v441 then
		if not v128 then
			local FlatIdent_140E1 = 0;
			while true do
				if (FlatIdent_140E1 == 0) then
					v128 = true;
					v129 = task.spawn(function()
						while v128 do
							if not v130() then
								task.wait(0.5);
							else
								task.wait(0.05);
							end
						end
					end);
					FlatIdent_140E1 = 1;
				end
				if (FlatIdent_140E1 == 1) then
					v4:SetCore("SendNotification", {Title="功能提示",Text="已开启自动点击抽奖",Duration=2,Icon="rbxassetid://128981664025072"});
					break;
				end
			end
		end
	else
		local FlatIdent_706CB = 0;
		while true do
			if (FlatIdent_706CB == 0) then
				v128 = false;
				if v129 then
					local FlatIdent_245AA = 0;
					while true do
						if (0 == FlatIdent_245AA) then
							task.cancel(v129);
							v129 = nil;
							break;
						end
					end
				end
				FlatIdent_706CB = 1;
			end
			if (FlatIdent_706CB == 1) then
				v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭自动点击抽奖",Duration=2,Icon="rbxassetid://128981664025072"});
				break;
			end
		end
	end
end});
local v131 = {"SA_BERROXY"};
local function v132()
	local FlatIdent_3AF69 = 0;
	local v442;
	local v443;
	while true do
		if (FlatIdent_3AF69 == 0) then
			v442 = v2.Name;
			v443 = v2.DisplayName;
			FlatIdent_3AF69 = 1;
		end
		if (FlatIdent_3AF69 == 1) then
			for v537, v538 in ipairs(v131) do
				if ((v442 == v538) or (v443 == v538)) then
					return true;
				end
			end
			return false;
		end
	end
end
v19:CreateButton({Name="一刀修罗",Ext=true,Callback=function()
	local FlatIdent_8417D = 0;
	local v444;
	local v445;
	local v452;
	local v463;
	local v464;
	local v465;
	local v466;
	local v467;
	while true do
		if (FlatIdent_8417D == 3) then
			v452.BackgroundColor3 = Color3.fromRGB(20, 120, 220);
			v452.TextColor3 = Color3.new(1, 1, 1);
			v452.Font = Enum.Font.SourceSansBold;
			v452.TextSize = 18;
			FlatIdent_8417D = 4;
		end
		if (FlatIdent_8417D == 5) then
			v464, v465 = nil;
			v452.InputBegan:Connect(function(v539)
				if (v539.UserInputType == Enum.UserInputType.Touch) then
					local FlatIdent_82400 = 0;
					while true do
						if (FlatIdent_82400 == 0) then
							v463 = true;
							v464 = v539.Position;
							FlatIdent_82400 = 1;
						end
						if (FlatIdent_82400 == 1) then
							v465 = v452.AbsolutePosition;
							break;
						end
					end
				end
			end);
			v126.InputChanged:Connect(function(v540)
				if (v463 and (v540.UserInputType == Enum.UserInputType.TouchMovement)) then
					local FlatIdent_834A0 = 0;
					local v638;
					while true do
						if (FlatIdent_834A0 == 0) then
							v638 = v540.Position - v464;
							v452.Position = UDim2.new(0, v465.X + v638.X, 0, v465.Y + v638.Y);
							break;
						end
					end
				end
			end);
			v126.InputEnded:Connect(function(v541)
				if (v541.UserInputType == Enum.UserInputType.TouchEnd) then
					v463 = false;
				end
			end);
			FlatIdent_8417D = 6;
		end
		if (0 == FlatIdent_8417D) then
			if not v132() then
				local FlatIdent_75DAF = 0;
				while true do
					if (FlatIdent_75DAF == 0) then
						v4:SetCore("SendNotification", {Title="付费功能",Text="您无权使用此功能，仅限白名单用户",Duration=3,Icon="rbxassetid://128981664025072"});
						return;
					end
				end
			end
			v444 = v2:FindFirstChild("PlayerGui"):FindFirstChild("SkillSwitchUI");
			if v444 then
				v444:Destroy();
				v4:SetCore("SendNotification", {Title="付费功能",Text="已关闭一刀修罗界面",Duration=2,Icon="rbxassetid://128981664025072"});
				return;
			end
			v445 = Instance.new("ScreenGui");
			FlatIdent_8417D = 1;
		end
		if (7 == FlatIdent_8417D) then
			v4:SetCore("SendNotification", {Title="付费功能",Text="已开启一刀修罗界面",Duration=2,Icon="rbxassetid://128981664025072"});
			break;
		end
		if (FlatIdent_8417D == 4) then
			v452.Text = "开启一刀修罗";
			v452.Draggable = true;
			v452.Parent = v445;
			v463 = false;
			FlatIdent_8417D = 5;
		end
		if (FlatIdent_8417D == 2) then
			v445.Parent = v2:WaitForChild("PlayerGui");
			v452 = Instance.new("TextButton");
			v452.Size = UDim2.new(0, 160, 0, 50);
			v452.Position = UDim2.new(0.02, 0, 0.4, 0);
			FlatIdent_8417D = 3;
		end
		if (FlatIdent_8417D == 1) then
			v445.Name = "SkillSwitchUI";
			v445.ResetOnSpawn = false;
			v445.IgnoreGuiInset = true;
			v445.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
			FlatIdent_8417D = 2;
		end
		if (FlatIdent_8417D == 6) then
			v466 = false;
			v467 = nil;
			function v467()
				task.spawn(function()
					while task.wait(0.3) do
						if not v466 then
							break;
						end
						local v640 = {{Skill="Kaijin"}};
						pcall(function()
							v5:WaitForChild("HeadCaptainOfCCTVSet"):FireServer(unpack(v640));
						end);
					end
				end);
			end
			v452.MouseButton1Click:Connect(function()
				v466 = not v466;
				if v466 then
					local FlatIdent_CCAB = 0;
					while true do
						if (FlatIdent_CCAB == 1) then
							v467();
							v4:SetCore("SendNotification", {Title="功能提示",Text="已开启一刀修罗",Duration=2});
							break;
						end
						if (FlatIdent_CCAB == 0) then
							v452.BackgroundColor3 = Color3.fromRGB(30, 180, 60);
							v452.Text = "关闭一刀修罗";
							FlatIdent_CCAB = 1;
						end
					end
				else
					local FlatIdent_1BD42 = 0;
					while true do
						if (FlatIdent_1BD42 == 1) then
							v4:SetCore("SendNotification", {Title="功能提示",Text="已关闭一刀修罗",Duration=2});
							break;
						end
						if (FlatIdent_1BD42 == 0) then
							v452.BackgroundColor3 = Color3.fromRGB(20, 120, 220);
							v452.Text = "开启一刀修罗";
							FlatIdent_1BD42 = 1;
						end
					end
				end
			end);
			FlatIdent_8417D = 7;
		end
	end
end});
task.spawn(function()
	v4:SetCore("SendNotification", {Title="已加载银狼脚本",Text=" ",Duration=3,Icon="rbxassetid://128981664025072"});
	task.wait(3);
	v4:SetCore("SendNotification", {Title="每天周日更新",Text=" ",Duration=3,Icon="rbxassetid://128981664025072"});
	task.wait(3);
	v4:SetCore("SendNotification", {Title="感谢你的支持",Text=" ",Duration=3,Icon="rbxassetid://128981664025072"});
end);