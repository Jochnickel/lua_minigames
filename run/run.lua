local io = {open = _G.io.open}
local print = _G.print
local require = _G.require
local type = _G.type

local f = io.open('current','r')
local current = f and f:read() or 0
if f then f:close() end

print("current level ",current)

local res = require("level."..current)
if 'number'==type(res) then
	local f = io.open('current','w')
	f:write(res)
	f:close()
	require("level."..res)
end