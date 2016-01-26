CLASS.name = "Marine Officer"
CLASS.desc = "You are a commissioned officer in the United States Marine"
CLASS.faction = FACTION_MARINE

function CLASS:onCanBe(client)
	return client:isMarineRank(SCHEMA.officerRanks)
end

CLASS_MARINE_OFFICER = CLASS.index