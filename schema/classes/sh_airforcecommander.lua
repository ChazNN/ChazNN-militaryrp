CLASS.name = "Air Force Commander"
CLASS.desc = "You are a Commander of the United States Air Force"
CLASS.faction = FACTION_AF

function CLASS:onCanBe(client)
	return client:isAirForceRank(SCHEMA.commanderRanks)
end

CLASS_AF_COMMAND = CLASS.index