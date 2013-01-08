local function tlen_bugfixed()
	return not not (#setmetatable({ "a", "b"}, { __len = function() return 42 end }) == 42)
end
--[[
print(tlen_bugfixed())
]]--
