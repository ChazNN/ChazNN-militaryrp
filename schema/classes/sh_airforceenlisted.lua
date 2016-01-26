CLASS.name = "Air Force Enlisted"
CLASS.desc = "You are enlisted in the United States Air Force"
CLASS.faction = FACTION_AF

function CLASS:onCanBe(client)
	return client:isAirForceRank(SCHEMA.enlistedRanks)
end

CLASS_AF_ENLISTED = CLASS.index