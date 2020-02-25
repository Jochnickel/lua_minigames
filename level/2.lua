local _Gprint = _G.print
_G.print = function(text)
	if 'Level 3'==text then
		_Gprint'Level 2 completed!'
	else
		_Gprint(text)
	end
end
print "Yay, you reached level 2!"
print 'write "Level 3" to the console to complete the level!'