-- print(debug.getinfo(1,"S").source:sub(2,-1))
local startlua = io.open("Start.lua","w")
startlua:write('require "level.1"')
startlua:close()