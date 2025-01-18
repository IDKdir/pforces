local function import(file)
    local repos = 'https://raw.githubusercontent.com/IDKdir/pforces/refs/heads/main'
    local s, e = pcall(function()
        return loadstring(game:HttpGet(repos .. file))()
    end)
    if not s then
        return warn('Could not import ' .. file)
    end
end

getgenv().import = import
import('/main.lua')