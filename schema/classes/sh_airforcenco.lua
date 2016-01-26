CLASS.name = "Air Force NCO"
CLASS.desc = "You are a Non-Comissioned Officer in the United States Air Force"
CLASS.faction = FACTION_AF

function CLASS:onCanBe(client)
	return client:isAirForceRank(SCHEMA.ncoRanks)
end

CLASS_AF_NCO = CLASS.index