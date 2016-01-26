CLASS.name = "Marine NCO"
CLASS.desc = "You are a Non-Comissioned Officer in the United States Marine"
CLASS.faction = FACTION_MARINE

function CLASS:onCanBe(client)
	return client:isMarineRank(SCHEMA.ncoRanks)
end

CLASS_MARINE_NCO = CLASS.index