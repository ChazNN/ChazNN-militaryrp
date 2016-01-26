CLASS.name = "Marine Commander"
CLASS.desc = "You are a Commander of the United States Marine"
CLASS.faction = FACTION_MARINE

function CLASS:onCanBe(client)
	return client:isMarineRank(SCHEMA.commanderRanks)
end

CLASS_MARINE_COMMAND = CLASS.index