
local HttpService = game:GetService("HttpService")

-- GitHub上的白名单文件链接
local WHITELIST_URL = "https://raw.githubusercontent.com/kunshu666/-/main/Whitelise"

-- 当有玩家加入时触发
game.Players.PlayerAdded:Connect(function(player)
    local function checkWhitelist(player)
        -- 异步加载白名单
        HttpService:GetAsync(WHITELIST_URL, true):andThen(
            function(response)
                -- 成功获取到白名单数据
                local whitelist = response.Body
                -- 分割字符串为多个玩家名
                local whitelistedPlayers = {}
                for name in response.Body:gmatch("[^\r\n]+") do
                    table.insert(whitelistedPlayers, string.lower(name))
                end
                
                -- 玩家名转为小写以便比较
                local playerLowercase = string.lower(player.Name)
                
                -- 检查当前玩家是否在白名单中
                if table.find(whitelistedPlayers, playerLowercase) then
                    print(player.Name .. " 是白名单成员，允许执行脚本。")
                    -- 在这里添加允许执行的脚本代码
                else
                    player:Kick("你不在白名单上。")
                end
            end,
            function(error)
                -- 获取白名单失败
                print("获取白名单失败：" .. error)
                player:Kick("无法验证白名单状态。")
            end
        )
    end
    
    -- 对每个新玩家执行白名单检查
    checkWhitelist(player)
end)

