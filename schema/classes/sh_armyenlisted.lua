CLASS.name = "Army Enlisted"
CLASS.desc = "You are enlisted in the United States Army"
CLASS.faction = FACTION_ARMY

function CLASS:onCanBe(client)
	return client:isArmyRank(SCHEMA.enlistedRanks)
end


CLASS_ARMY_ENLISTED = CLASS.index