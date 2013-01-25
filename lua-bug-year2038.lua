
-- https://fr.wikipedia.org/wiki/Bug_de_l%27an_2038
-- 2038-01-19 03:14:07
-- 2106-02-07 06:28:15

local function yearbug(y)
	local y = y or 2038
	local y0={year=y, day=1, month=1}
	local y1={year=y+1, day=1, month=1}
	return ( os.date("%s", os.time(y0)) > os.date("%s", os.time(y1)) )
end

print( yearbug(2038) and "2038 buggy" or "2038 ok" )
print( yearbug(2106) and "2106 buggy" or "2106 ok" )

