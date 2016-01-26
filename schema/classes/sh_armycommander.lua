CLASS.name = "Army Commander"
CLASS.desc = "You are a Commander of the United States Army"
CLASS.faction = FACTION_ARMY

function CLASS:onCanBe(client)
	return client:isArmyRank(SCHEMA.commandRanks)
end

CLASS_ARMY_COMMAND = CLASS.index