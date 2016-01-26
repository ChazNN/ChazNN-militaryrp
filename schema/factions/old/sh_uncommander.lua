FACTION.name = "UN Police Force Commander"
FACTION.desc = "The Commander of the UN Police Force"
FACTION.color = Color(25, 30, 180)
FACTION.isDefault = false
FACTION.models = {
	"models/player/mnu_assault.mdl"
}
FACTION.weapons = {"stunstick", "fas2_glock20", "fas2_mp5k"}
FACTION.pay = 100
FACTION.isGloballyRecognized = true

function FACTION:onGetDefaultName(client)
	if (SCHEMA.digitsLen >= 1) then
		local digits = math.random(tonumber("1"..string.rep("0", SCHEMA.digitsLen-1)), tonumber(string.rep("9", SCHEMA.digitsLen)))
		return SCHEMA.cpPrefix..table.GetFirstValue(SCHEMA.rctRanks).."."..digits, true
	else
		return SCHEMA.cpPrefix..table.GetFirstValue(SCHEMA.rctRanks), true
	end
end

FACTION_UNCOMMAND = FACTION.index
