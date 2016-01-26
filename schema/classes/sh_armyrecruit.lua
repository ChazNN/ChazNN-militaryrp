CLASS.name = "Army Recruit"
CLASS.desc = "You are a Recruit in the United States Army"
CLASS.faction = FACTION_ARMY

function CLASS:onCanBe(client)
	return client:isArmyRank(SCHEMA.rctRanks)
end


CLASS_ARMY_RCT = CLASS.index