getgenv().autotap = false;
getgenv().autodura = false;
getgenv().autochack = false;
getgenv().autosword = false;
getgenv().autostar = false;
getgenv().autorun = false;

local remotePath = game:GetService("ReplicatedStorage");

   function Strength ()
    spawn(function ()
        while autotap == true do
            local args = { [1] = "TrainStat", [2] = "Strength"}
            
        remotePath.Events:FindFirstChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
            wait();
            end
    end)
   end

 function Durability ()
spawn(function ()
    while  autodura == true do
        local args = { [1] = "TrainStat",     [2] = "Durability" }
    remotePath.Events:FindFirstChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
     wait();
    end  
end)
end

function Chakra()
    spawn(function ()
        while autochack == true do
            local args = {[1] = "TrainStat",       [2] = "Chakra" }
            
        remotePath.Events:FindFirstChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
            wait();
        end
        
    end)
end

 function Sword()
    spawn(function ()
        while autosword == true do
            local args = {[1] = "TrainStat",    [2] = "Sword"}
        
        remotePath.Events:FindFirstChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
        wait()
        end
        
    end)
    
 end

 function Run()
    spawn(function ()
 while autorun == true do
    local args = { [1] = "TrainStat", [2] = "Speed" }
    
    remotePath.Events:FindFirstChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
    wait();
       end
    end)  
 end

function Star ()
    spawn(function ()
        while autostar == true do
            local args = {
                [1] = "Roll",
                [2] = "Champion Capsule",
                [3] = 1
            }
            remotePath.Events:FindFirstChild("Champions/RemoteEvent"):FireServer(unpack(args))
            wait();
        end
    end)   
end

function teleportTo(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character  then
    plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end 
end
function TeleportTraning(training)
    if game:GetService("Workspace").Scriptable.TrainingsAreas:FindFirstChild(training) then
        teleportTo(game:GetService("Workspace").Scriptable.TrainingsAreas[training].CFrame)
    end
end

 local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joeengo/exploiting/main/EngoUILIB_V2.lua", true))()

 local main = library:CreateMain("AFSX", "", Enum.KeyCode.LeftAlt)
 
 local tab = main:CreateTab("Auto-Farm");

 local egg = main:CreateTab("Auto-Star");

 local tp =  main:CreateTab("Training-Areas");
 
 tab:CreateLabel("Main")

 egg:CreateLabel("Capsules")

 tp:CreateLabel("Training-Areas")
 
 tab:CreateToggle("Strength", function(bool)
    getgenv().autotap = bool
    print("Auto Strength is:", bool);
    if bool then
        Strength();
    end
 end)

 tab:CreateToggle("Durability", function(bool)
    getgenv().autodura = bool
    print("Auto Durability is:", bool);
    if bool then
        Durability();
    end
 end)

 tab:CreateToggle("Chakra", function(bool)
    getgenv().autochack = bool
    print("Auto Chakra is:", bool);
    if bool then
       Chakra();
    end
 end)

 tab:CreateToggle("Sword", function(bool)
    getgenv().autosword = bool
    print("Auto Sword is:", bool);
    if bool then
        Sword();
    end
 end);

tab:CreateToggle("Speed", function (bool)
    getgenv().autorun = bool
    print("Auto Speed is:" , bool)
    if bool then
        Run();
    end
end)


 egg:CreateToggle("Champion Capsule" , function (bool)
 getgenv().autostar = bool
 print("Auto Star is :" , bool);
   if bool then
    Star();
   end
 end)

tp:CreateButton("Volcano", function ()
   TeleportTraning("Volcano");
end)
 
tp:CreateButton("Ice Chamber", function ()
    TeleportTraning("Ice Chamber");
 end)

 tp:CreateButton("Library", function ()
    TeleportTraning("Library");
 end)
 
 tp:CreateButton("Tower of Heaven", function ()
    TeleportTraning("Tower of Heaven");
 end)

 tp:CreateButton("Trampoline", function ()
    TeleportTraning("Trampoline");
 end)

 tp:CreateButton("Spider Web", function ()
    TeleportTraning("Spider Web");
 end)

 tp:CreateButton("Chakra Tree", function ()
    TeleportTraning("Chakra Tree");
 end)

--do not work 
--  tp:CreateButton("Executor Bot", function () 
--     TeleportTraning("Executor Bot");
--  end)

 tp:CreateButton("Cell Arena", function ()
    TeleportTraning("Cell Arena");
 end)

 tp:CreateButton("Desert Storm", function ()
    TeleportTraning("Desert Storm");
 end)

 tp:CreateButton("Waterfall", function ()
    TeleportTraning("Waterfall");
 end)

 tp:CreateButton("Burning House", function ()
    TeleportTraning("Burning House");
 end)

 tp:CreateButton("Meteor", function ()
    TeleportTraning("Meteor");
 end)

 tp:CreateButton("Garbage Beach", function ()
    TeleportTraning("Garbage Beach");
 end)

 tp:CreateButton("Gravity Chamber", function ()
    TeleportTraning("Gravity Chamber");
 end)

 tp:CreateButton("Boulder", function ()
    TeleportTraning("Boulder");
 end)

 tp:CreateButton("Temple", function ()
    TeleportTraning("Temple");
 end)

 tp:CreateButton("Pirate Ship", function ()
    TeleportTraning("Pirate Ship");
 end)

 tp:CreateButton("Gym", function ()
    TeleportTraning("Gym");
 end)

 tp:CreateButton("Wood Logs", function ()
    TeleportTraning("Wood Logs");
 end)

 tp:CreateButton("North King's Planet", function ()
    TeleportTraning("North King's Planet");
 end)

 tp:CreateButton("Ursus Shock", function ()
    TeleportTraning("Ursus Shock");
 end)

 tp:CreateButton("UA High", function ()
    TeleportTraning("UA High");
 end)

 tp:CreateButton("Laboon", function ()
    TeleportTraning("Laboon");
 end)

 tp:CreateButton("Coffin Boat", function ()
    TeleportTraning("Coffin Boat");
 end)

 tp:CreateButton("Sludge Villain", function ()
    TeleportTraning("Sludge Villain");
 end)

 tp:CreateButton("UA Training Grounds", function ()
    TeleportTraning("UA Training Grounds");
 end)

