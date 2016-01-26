CLASS.name = "Navy Recruit"
CLASS.desc = "You are a Recruit in the United States Navy"
CLASS.faction = FACTION_NAVY

function CLASS:onCanBe(client)
	return client:isNavyRank(SCHEMA.rctRanks)
end

CLASS_NAVY_RCT = CLASS.index