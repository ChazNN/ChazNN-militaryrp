CLASS.name = "Marine Recruit"
CLASS.desc = "You are a Recruit in the United States Marine"
CLASS.faction = FACTION_MARINE

function CLASS:onCanBe(client)
	return client:isMarineRank(SCHEMA.rctRanks)
end

CLASS_MARINE_RCT = CLASS.index