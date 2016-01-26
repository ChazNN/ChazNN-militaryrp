CLASS.name = "Navy Commander"
CLASS.desc = "You are a Commander of the United States Navy"
CLASS.faction = FACTION_NAVY

function CLASS:onCanBe(client)
	return client:isNavyRank(SCHEMA.commanderRanks)
end

CLASS_NAVY_COMMAND = CLASS.index