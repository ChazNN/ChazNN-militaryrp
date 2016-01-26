CLASS.name = "Marine Officer"
CLASS.desc = "You are a enlisted in the United States Marine"
CLASS.faction = FACTION_MARINE

function CLASS:onCanBe(client)
	return client:isMarineRank(SCHEMA.enlistedRanks)
end

CLASS_MARINE_ENLISTED = CLASS.index