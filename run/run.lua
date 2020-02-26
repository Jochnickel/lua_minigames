local io = {open = _G.io.open}
local pr = _G.print
local require = _G.require
local type = _G.type

function round()
	local f = io.open('current','r')
	local current = f and f:read() or 0
	if f then f:close() end

	pr("current level: ",current)

	local res = require("level."..current)
	if 'number'==type(res) then
		local f = io.open('current','w')
		f:write(res)
		f:close()
		round()
	end
end
round()