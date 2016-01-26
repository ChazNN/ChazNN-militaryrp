CLASS.name = "Air Force Recruit"
CLASS.desc = "You are a Recruit in the United States Air Force"
CLASS.faction = FACTION_AF

function CLASS:onCanBe(client)
	return client:isAirForceRank(SCHEMA.rctRanks)
end

CLASS_AF_RCT = CLASS.index