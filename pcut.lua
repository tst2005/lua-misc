local function prettycut(str, max, sep)
	local max2 = max - #sep
	if #str <= max2 then
		return str, ""
	end
	return str:sub(1,max2)..sep, str:sub(max2+1)
end

--[[ sample of use :
local p1, p2 = prettycut("a b c d",7, "...")
print(p1)
print(p2)
]]--
