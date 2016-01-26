CLASS.name = "Army Officer"
CLASS.desc = "You are a commissioned officer in the United States Army"
CLASS.faction = FACTION_ARMY

function CLASS:onCanBe(client)
	return client:isArmyRank(SCHEMA.officerRanks)
end


CLASS_ARMY_OFFICER = CLASS.index