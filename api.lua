local function runIsolated(url)
    local src = game:HttpGet(url)
    local f = loadstring(src)
    if f then
        local env = setmetatable({}, {__index = getfenv()})
        setfenv(f, env)
        pcall(f)
    end
end

runIsolated('https://raw.githubusercontent.com/kiroscrpts/adoptmescript/refs/heads/main/adoptmefunction.lua')
task.wait(2)
runIsolated('https://raw.githubusercontent.com/AdoptMeScriptt/loadingandspawner/refs/heads/main/finalspawnerloading.lua.txt')
