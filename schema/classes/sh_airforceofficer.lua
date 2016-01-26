CLASS.name = "Air Force Officer"
CLASS.desc = "You are a commissioned officer in the United States Air Force"
CLASS.faction = FACTION_AF

function CLASS:onCanBe(client)
	return client:isAirForceRank(SCHEMA.officerRanks)
end

CLASS_AF_OFFICER = CLASS.index