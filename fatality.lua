--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))();local v1="8f4c2ab46c3c4e1bb7ac129e39bb43ab";local v2="c78d90d3ae254074a37b12b8330cfc0d";v0.Set({publicToken="d719187d8a3b4ea1a34cd669c5bbf80d",privateToken="c3de5caec0c247e0ad038543795ecc9e",trueData=v1,falseData=v2});local v3=loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))();local v4="";local v5=v3:CreateWindow({Title="Key System",SubTitle="raven",TabWidth=458 -298 ,Size=UDim2.fromOffset(580,908 -(367 + 201) ),Acrylic=false,Theme="Dark",MinimizeKey=Enum.KeyCode.LeftControl});local v6={KeySys=v5:AddTab({Title="Key System",Icon="key"})};local v7=v6.KeySys:AddInput("Input",{Title="Enter Key",Description="Enter Key Here",Default="",Placeholder="Enter key…",Numeric=false,Finished=false,Callback=function(v10) v4=v10;end});local v8=v6.KeySys:AddButton({Title="Check Key",Description="Enter Key before pressing this button",Callback=function() local v11=927 -(214 + 713) ;local v12;while true do if (v11==(0 + 0)) then v12=v0.validateDefaultKey(v4);if (v12==v1) then print("Key is valid");loadstring(game:HttpGet("https://raw.githubusercontent.com/hoholwaredevz/Fatality/refs/heads/main/kizaru.lua"))();else print("Key is invalid");end break;end end end});local v9=v6.KeySys:AddButton({Title="Get Key",Description="Get Key here",Callback=function() setclipboard(v0.getLink());end});v5:SelectTab(1);
