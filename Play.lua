local G ={}
for k,v in pairs(_G) do G[k] = v end
return function()
	print(round())
	return 2
end