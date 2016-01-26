CLASS.name = "Navy Officer"
CLASS.desc = "You are a enlisted in the United States Navy"
CLASS.faction = FACTION_NAVY

function CLASS:onCanBe(client)
	return client:isNavyRank(SCHEMA.enlistedRanks)
end

CLASS_NAVY_ENLISTED = CLASS.index