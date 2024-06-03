local HttpService = game:GetService("HttpService")


local WHITELIST_URL = "https://raw.githubusercontent.com/kunshu666/-/main/Whitelise"


game.Players.PlayerAdded:Connect(function(player)
    local function checkWhitelist(player)
        
        HttpService:GetAsync(WHITELIST_URL, true):andThen(
            function(response)
                
                local whitelist = response.Body
                
                local whitelistedPlayers = {}
                for name in response.Body:gmatch("[^\r\n]+") do
                    table.insert(whitelistedPlayers, string.lower(name))
                end
                
                
                local playerLowercase = string.lower(player.Name)
                
                
                if table.find(whitelistedPlayers, playerLowercase) then
                    print(player.Name .. " 是白名单成员，允许执行脚本。")
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/kunshu666/curly-memory/main/README.md"))()
                else
                    player:Kick("你不在白名单上。")
                end
            end,
            function(error)
                
                print("获取白名单失败：" .. error)
                player:Kick("无法验证白名单状态。")
            end
        )
    end
    

    checkWhitelist(player)
end)

